using System;
using System.Collections.Generic;

namespace Models.Models;

public partial class Appointment
{
    public int AppointmentId { get; set; }

    public int AccountId { get; set; }

    public int ServiceId { get; set; }

    public int? Cost { get; set; }

    public virtual Account Account { get; set; } = null!;

    public virtual Service Service { get; set; } = null!;
}
