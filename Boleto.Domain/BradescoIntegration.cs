//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Boleto.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class BradescoIntegration
    {
        public int Id { get; set; }
        public string OrderId { get; set; }
        public string Token { get; set; }
        public bool IsRequest { get; set; }
        public System.DateTime CreateDate { get; set; }
        public string JsonContent { get; set; }
        public string UrlBoleto { get; set; }
    }
}
