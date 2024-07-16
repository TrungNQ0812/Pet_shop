using System;
using System.Collections.Generic;

namespace Repositories.Models;

public partial class Account
{
    public int AccountId { get; set; }

    public string Account1 { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string? Email { get; set; }

    public string? PhoneNumber { get; set; }

    public int AccountType { get; set; }
}
