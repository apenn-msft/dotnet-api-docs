<!--<Snippet1>-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server" language="C#">

  void Page_Load(object sender, EventArgs e)
  {
    // Use the indexer to access each object in the 
    // HotSpotCollection and display the value of
    // its AlternateText property to the user. 
    for (int i = 0; i <= Shop.HotSpots.Count - 1; i++)
    {
      Label1.Text += "<br />" + Shop.HotSpots[i].AlternateText + "<br />";
    }  
  }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
  <title>HotSpotCollection.Item Property Example</title>
</head>
  <body>
    <form id="Form1" runat="server">
    
      <h3>HotSpotCollection.Item Property Example</h3>
      
      <h4>Shopping Choices:</h4>
      
      <asp:imagemap id="Shop"           
        imageurl="Images/ShopChoice.jpg" 
        alternatetext="Shopping choices"
        runat="Server">    
        
        <asp:circlehotspot
          navigateurl="http://www.tailspintoys.com"
          x="145"
          y="120"
          radius="75"
          hotspotmode="Navigate"
          alternatetext="Shop for toys">           
        </asp:circlehotspot> 
        
        <asp:circlehotspot
          navigateurl="http://www.cohowinery.com"
          x="145"
          y="290"
          radius="75"
          hotspotmode="Navigate"
          alternatetext="Shop for wine">
        </asp:circlehotspot>     
          
      </asp:imagemap> 
      
      <asp:label id="Label1"
        runat="Server">
      </asp:label>      
                 
    </form>      
  </body>
</html>
<!--</Snippet1>-->
