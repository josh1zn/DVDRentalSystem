using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DVDRentalData;

namespace DVDRentalCode
{
    public class UserBLL
    {
        public void AddUser(string name, string surname, string idnumber, string address, string contactNumber, string email, string role, string username, string password)
        {
            DVDRentalEntities db = new DVDRentalEntities();

            User u = new User 
            {
                Name = name,
                Surname = surname,
                IDNumber = idnumber,
                Address = address,
                ContactNumber = contactNumber,
                Email = email,
                Role = role,
                Username = username,
                Password = password
            };

            db.Users.Add(u);
            db.SaveChanges();
        }

        public List<UserDto> getAllCustomers()
        {
            DVDRentalEntities db = new DVDRentalEntities();
            var customers = db.Users.Where(x => x.Role.Equals("Customer", StringComparison.InvariantCultureIgnoreCase));
            List<UserDto> LU = new List<UserDto>();
            foreach(var c in customers)
            {
                LU.Add(new UserDto
                {
                    ID = c.ID.ToString(),
                    Name = c.Name,
                    Surname = c.Surname,
                    IDNumber = c.IDNumber,
                    Address = c.Address,
                    ContactNumber = c.ContactNumber,
                    Email = c.Email,
                    Balance = c.Balance.ToString(),
                    Fine = c.Fine.ToString(),
                    Username = c.Username
                });
            }
            return LU;
        }

        public UserDto getCustomer(int id)
        {
            DVDRentalEntities db = new DVDRentalEntities();
            var c = db.Users.FirstOrDefault(x => x.Role.Equals("Customer", StringComparison.InvariantCultureIgnoreCase) && x.ID == id);
            var customer = new UserDto()
            {
                Name = c.Name,
                Surname = c.Surname,
                IDNumber = c.IDNumber,
                Address = c.Address,
                ContactNumber = c.ContactNumber,
                Email = c.Email,
                Balance = c.Balance.ToString(),
                Fine = c.Fine.ToString(),
                Username = c.Username
            };
            return customer;
        }

        public UserDto getCustomer(string idnumber)
        {
            DVDRentalEntities db = new DVDRentalEntities();
            var c = db.Users.FirstOrDefault(x => x.Role.Equals("Customer", StringComparison.InvariantCultureIgnoreCase) && x.IDNumber == idnumber);
            var customer = new UserDto()
            {
                Name = c.Name,
                Surname = c.Surname,
                IDNumber = c.IDNumber,
                Address = c.Address,
                ContactNumber = c.ContactNumber,
                Email = c.Email,
                Balance = c.Balance.ToString(),
                Fine = c.Fine.ToString(),
                Username = c.Username
            };
            return customer;
        }

        public List<UserDto> getAllClerks()
        {
            DVDRentalEntities db = new DVDRentalEntities();
            var customers = db.Users.Where(x => x.Role.Equals(x.Role.Equals("Clerk", StringComparison.InvariantCultureIgnoreCase)));
            List<UserDto> LU = new List<UserDto>();
            foreach (var c in customers)
            {
                LU.Add(new UserDto
                {
                    Name = c.Name,
                    Surname = c.Surname,
                    IDNumber = c.IDNumber,
                    Address = c.Address,
                    ContactNumber = c.ContactNumber,
                    Email = c.Email,
                    Balance = c.Balance.ToString(),
                    Fine = c.Fine.ToString(),
                    Username = c.Username
                });
            }
            return LU;
        }

        public UserDto getUserCredentials(string username)
        {
            DVDRentalEntities db = new DVDRentalEntities();
            var u = db.Users.FirstOrDefault(x => x.Username.Equals(username, StringComparison.InvariantCultureIgnoreCase));
            return new UserDto()
            {
                ID = u.ID.ToString(),
                Username = u.Username,
                Role = u.Role
            };
        }
        //Get user fines for sending notifications page.Fines with a balance more then 0
        public List<UserDto> getUserFines()
        {
            DVDRentalEntities db = new DVDRentalEntities();
            var fines = db.Users.Where(x => x.Fine > 0);
            List<UserDto> FU = new List<UserDto>();

            foreach (var f in fines)
            {
                FU.Add(new UserDto
                {
                    ID=f.ID.ToString(),
                    Name = f.Name,
                    Surname = f.Surname,
                    IDNumber = f.IDNumber,
                    Address = f.Address,
                    ContactNumber = f.ContactNumber,
                    Email = f.Email,
                    Balance=f.Balance.ToString(),
                    Fine = f.Fine.ToString(),
                });
            }
            return FU;


            }
        }
    }

    public class UserDto
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string IDNumber { get; set; }
        public string Address { get; set; }
        public string ContactNumber { get; set; }
        public string Email { get; set; }
        public string Balance { get; set; }
        public string Fine { get; set; }
        public string Role { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
    }

