<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Web_App.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="contact">
                    <div class="container">
                        <div class="col-sm-6 col-xs-12 contact-left">
                            <div class="map">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.8758661914394!2d108.21325731431683!3d16.071930143635864!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218363f4f5cc3%3A0x6d1479d0cc5e410a!2zOTMgSOG6o2kgUGjDsm5nLCBUaOG6oWNoIFRoYW5nLCBRLiBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1457063979459" frameborder="0" style="border:0" allowfullscreen></iframe>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12 contact-right">
                            <div class="adress">
                                <ul>
                                    <li>Đà Nẵng</li>
                                    <li>Việt Nam</li>
                                    <li>0935.508.730</li>
                        
                                </ul>
                                 <div class="clearfix"></div>
                            </div>
                            <div class="form-details">
                                <form>
                                <input type="text" class="name-con" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}"><br>
                                <input type="text" class="email-con" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"><br>
                                <textarea class="contact-area" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea><br>
                                    <a class="btn btn-default btn-contact" href="#" role="button">Submit</a>    
                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
</asp:Content>
