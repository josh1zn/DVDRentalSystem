using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace DVDRentalCode
{
	class HashBLL
	{
		public String CreateHash(MD5 md5Hash, string input)
		{
			byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

			StringBuilder sBuilder = new StringBuilder();
			for (int i = 0; i < data.Length; i++)
			{
				sBuilder.Append(data[i].ToString("X2"));
			}

			return sBuilder.ToString();
		}


		public bool VerifyHash(MD5 md5Hash, string input, string hash)
		{
			string hashInput = CreateHash(md5Hash, input);

			StringComparer comparer = StringComparer.OrdinalIgnoreCase;

			if (0 == comparer.Compare(hashInput, hash))
			{
				return true;
			}

			else
			{
				return false;
			}
		}

	}
}
