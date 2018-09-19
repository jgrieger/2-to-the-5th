using System;
using System.Security.Cryptography;
using System.Text;

namespace Two
{
    /// <summary>
    /// cerner_2^5_2018
    /// </summary>
    public sealed class HmacSha512Hasher
    {
        public string ComputeBase64Hash(byte[] hashKey, string inputToHash)
        {
            var inputBytes = Encoding.UTF8.GetBytes(inputToHash);

            using (var hashAlgorithm = new HMACSHA512(hashKey))
            {
                var hash = hashAlgorithm.ComputeHash(inputBytes);

                return Convert.ToBase64String(hash);
            }
        }
    }
}