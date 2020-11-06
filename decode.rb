# The purpose of this script is to show that if I have the secret_key_base
# and a cookie to an active Rails session, I can decrypt it and gain access
# to key information about the user's session.

require 'CGI'
require 'json'
require 'active_support'

def verify_decrypt_session_cookie(cookie,secret_key_base)
	cookie = CGI::unescape(cookie)
	salt = 'encrypted cookie'
	signed_salt = 'signed encrypted cookie'
	key_generator = ActiveSupport::KeyGenerator.new(secret_key_base, iterations: 1000)
	secret = key_generator.generate_key(signed_salt)[0,ActiveSupport::MessageEncryptor.key_len]
	signed_secret = key_generator.generate_key(signed_salt)
	encryptor = ActiveSupport::MessageEncryptor.new(secret, signed_secret, serializer: JSON)

	encryptor.decrypt_and_verify(cookie)
end

# cookie = 'pr27DhcVrQIp7yE7EruVIr5oLZTb1vyJFh1td9GcqXsdDWJkhwNsbQS5AhkJ3ouqw9pSsm5RGQ12U8vEeuwaRkSDKRACHzqdXicOliWiGW0WSOoWPQiR1S4cHIxnXlkhCYUkwfTh1TKXJOKgj3t9VN4HuBB7rqV5U2TdQrH6sa69lH5mCRcUnuah38J3vDjRsXmifIGMdoY7Uobh6lvsQfaJ%2F7Vyze4Apr%2F7C6gJUjpasZdHLJ4kNcvOTPF5U2JDbKUkFQlypeDCfcoqiHFwZN1%2BSmqFDFxYEwiVYpd%2F--neQYsEMkXRwLGZ3R--yYXj1rFGSN%2FrMG2wV0f7CQ%3D%3D'
# secret = '39db158d5b676ac554b817a0448fa0d0f15e998749695b0e86a7b4f9faaa392a259ac15275cae75e764423119347f592d4688d142de68c01e0dd2f0e0901fb65ru'

p verify_decrypt_session_cookie(cookie, secret)