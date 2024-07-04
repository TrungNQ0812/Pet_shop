using System;
using System.Collections.Generic;

namespace Repositories.Models;

public partial class Item
{
    public int ItemId { get; set; }

    public string ItemName { get; set; } = null!;

    public int Quantity { get; set; }
}
