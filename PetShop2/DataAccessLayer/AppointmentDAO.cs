using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models.Models;

namespace DataAccessLayer
{
    public class AppointmentDAO
    {
        public static List<Appointment> GetAppointments()
        {
            using var db = new PetShopContext();
            return db.Appointments.ToList();
        }

        public static Appointment getAppointmentByID( int id)
        {
            using var db = new PetShopContext();
            return db.Appointments.FirstOrDefault(c => c.AppointmentId == id);
        }
    }
}
