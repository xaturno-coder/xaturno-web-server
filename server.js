const express = require("express");
const app = express();

const asciiBanner = `
#     #    #    ####### #     # ######  #     # #######     #####    ###    #####  ####### 
 #   #    # #      #    #     # #     # ##    # #     #    #     #  #   #  #     # #       
  # #    #   #     #    #     # #     # # #   # #     #          # #     #       # #       
   #    #     #    #    #     # ######  #  #  # #     #     #####  #     #  #####  ######  
  # #   #######    #    #     # #   #   #   # # #     #    #       #     # #             # 
 #   #  #     #    #    #     # #    #  #    ## #     #    #        #   #  #       #     # 
#     # #     #    #     #####  #     # #     # #######    #######   ###   #######  #####  
`;

app.get("/", (req, res) => {
  // Enviamos como texto plano para que se vea bien en monoespaciado
  res.setHeader("Content-Type", "text/plain");
  res.send(asciiBanner);
});
app.listen(3000, () => {
  console.log("Server running on port 3000");
});