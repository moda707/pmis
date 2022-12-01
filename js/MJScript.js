//--------------- PMIS - MODA -----------------------//
//-----------Developed by: Mohsen Dastpak------------//
//-----------Email: moh.dastpak@gmail.com------------//
//-----------Phone: +989303843628 -------------------//
//-----------Project Management Organization---------//
//---------------------------------------------------//

function ObjToggle(b,c) {

    var a = document.getElementById(b);
    var d = document.getElementById(c);
    if (a.style.display == '' || a.style.display == 'block') {
        a.style.display = 'none';
        d.setAttribute("class", "glyphicon glyphicon-plus");
    } else {
        a.style.display = 'block';
        d.setAttribute("class", "glyphicon glyphicon-minus");
    }
}

function SetAddress() {
    document.getElementById("ctl00_ContentPlaceHolder1_txtFileAddress").value = document.getElementById("ctl00_ContentPlaceHolder1_fu1").value;    
}

function PrintP(a) {
        
    var tw;
    var myWin = window.open("", "_blank", 'height=200, left=300, alwaysRaised=yes,', null);
        
    var t = document.getElementById("ctl00_ContentPlaceHolder1_chartscript02").innerHTML;
    myWin.document.write("<html><head><title></title>");
    myWin.document.write('<link href="css/styles.css" rel="stylesheet" type="text/css" /><script src="js/MJScript.js" type="text/javascript"/><script src="js/main.js" type="text/javascript"></script><script src="js/Chart.js" type="text/javascript"></script><script src="js/Chart.StackedBar.js" type="text/javascript"></script><script src="js/jquery-1.11.0.js" type="text/javascript"></script></head>');
    myWin.document.write('<body>');
    myWin.document.write($('#' + a).html());

    myWin.document.write(t + "<span style='display:none;' id='chartisloaded'>0</span><button id='btnloadchart' onclick='javascript:loadchart();' type='button' >load again</button><button onclick='window.print();' type='button'></button></body></html>");
    
    //myWin.print();

}

function DoChartandPrint() {
    
    if (document.getElementById("chartisloaded").innerHTML == "0") {
        loadchart();
        document.getElementById("chartisloaded").innerHTML = "1";
        window.print();
    }
}

Number.prototype.format = function (n, x) {
    var re = '\\d(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\.' : '$') + ')';
    return this.toFixed(Math.max(0, ~ ~n)).replace(new RegExp(re, 'g'), '$&,');
};

function FToggle(element, destn) {

    if ($(element).hasClass('fa-chevron-up')) {
        $("#" + destn).slideUp();
        $(element).removeClass('fa-chevron-up').addClass('fa-chevron-down');
    } else {
        $("#" + destn).slideDown();
        $(element).removeClass('fa-chevron-down').addClass('fa-chevron-up');
    }
}

function TToggle(element, destn) {

    if ($('#' + element).hasClass('fa-chevron-up')) {
        $("#" + destn).slideUp();
        $('#' + element).removeClass('fa-chevron-up').addClass('fa-chevron-down');
    } else {
        $("#" + destn).slideDown();
        $('#' + element).removeClass('fa-chevron-down').addClass('fa-chevron-up');
    }
}

function EditEqItem(t) {

    var w = document.getElementById("E_Name_" + t);
    var q = w.getAttribute("val");
    document.getElementById("ctl00_ContentPlaceHolder1_dpFName").value = q;

    w = document.getElementById("P_Name_" + t);
    q = w.getAttribute("val");
    document.getElementById("ctl00_ContentPlaceHolder1_dpFProject").value = q;

    w = document.getElementById("O_Name_" + t);
    q = w.getAttribute("val");
    document.getElementById("ctl00_ContentPlaceHolder1_dpFOwner").value = q;

    w = document.getElementById("E_Type_" + t);
    q = w.getAttribute("val");
    document.getElementById("ctl00_ContentPlaceHolder1_dpFType").value = q;

    w = document.getElementById("E_Count_" + t);
    document.getElementById("ctl00_ContentPlaceHolder1_txtFCount").value = w.innerHTML;
        
    document.getElementById("ctl00_ContentPlaceHolder1_txtEqItemCode1").value = t;

    $("#ctl00_ContentPlaceHolder1_EntryBox").fadeOut().fadeIn(300);
}

function DeleteEqItem(t) {

}

function EqClearForm() {
    document.getElementById("ctl00_ContentPlaceHolder1_txtEqItemCode1").value = "";

    document.getElementById("ctl00_ContentPlaceHolder1_dpFName").value = "";

    document.getElementById("ctl00_ContentPlaceHolder1_dpFProject").value = "";

    document.getElementById("ctl00_ContentPlaceHolder1_dpFOwner").value ="";

    document.getElementById("ctl00_ContentPlaceHolder1_dpFType").value = "";

    document.getElementById("ctl00_ContentPlaceHolder1_txtFCount").value = "";
}

function TJ_Det(t) {
    $("#dvframe").attr("src", "TJDescription.aspx?=" + t);
}

function PP_Phys_SCurve(s, f) {
    
    var lableP = [];
    var lableF = "";

    var dataPS = [];
    var dataPA = [];
    
    for (var i = s; i < f; i++) {
        var t = document.getElementById("PP_" + i).innerHTML;
        
        lableP.push(t.split("$")[0]);
        //lableF += "\"" + t.split("$")[0] + "\", ";

        dataPS.push(t.split("$")[1]);

        if (t.split("$")[2] != 0 || i==0) {
            dataPA.push(t.split("$")[2]);
        }

    }
    
    //lableF = lableF.substring(lableF.length - 2, 2);    
    //dataPA = dataPA.substring(dataPA.length - 2, 2);

    document.getElementById("fromdate").innerHTML = lableP[0];
    document.getElementById("todate").innerHTML = lableP[lableP.length-1];

    var barChartDataP = { labels: lableP,
        datasets: [
                    { lable: "برنامه ای", type: "line", fillColor: "#116641", strokeColor: "#116641", pointStrokeColor: "#116641", pointHighlightFill: "#116641", pointHighlightStroke: "#116641", data: dataPS }
                    , { lable: "واقعی", type: "line", fillColor: "#65C7C7", strokeColor: "#65C7C7", pointStrokeColor: "#65C7C7", pointHighlightFill: "#65C7C7", pointHighlightStroke: "#65C7C7", data: dataPA }
                  ]
        };

    var w = document.getElementById('canvasPhys');
    document.getElementById("canvasContainer").removeChild(w);
    var nd = document.createElement("canvas");
    nd.setAttribute("id", "canvasPhys");
    nd.setAttribute("width", "900px");
    nd.setAttribute("height", "500px");
    document.getElementById("canvasContainer").appendChild(nd);
    
    var ctx1 = document.getElementById('canvasPhys').getContext('2d');
    //var ctx2 = document.getElementById('canvasFin').getContext('2d');

    var myBar = new Chart(ctx1).Line(barChartDataP, { animation: false, datasetFill: false, pointHitDetectionRadius: 1, scaleFontFamily: 'B Nazanin', responsive: false, pointDot: true, pointDotStrokeWidth : 1 });
    
    //var myBarE = new Chart(ctx2).Line(barChartDataF, { datasetFill: false, scaleFontFamily: 'B Nazanin', scaleLabel: "<%= value %>", responsive: false, multiTooltipTemplate: "<%= value %>", pointDot: false, datasetStrokeWidth: 5 });


}

function startgenerate() {

    var WBS_ID = new Array("E", "P", "C", "C01", "C02", "C01.01", "C01.02", "C01.03");
    var WBS_Level = new Array(1, 2, 2, 2, 3, 3, 4, 4, 4);
    var WBS_Desc = new Array("مهندسی", "تامین", "ساخت", "ساخت 1", "ساخت 2", "ساخت 1 -1", "ساخت 1-2", "ساخت 1-3");
    var WBS_ParentID = new Array("EPC", "EPC", "EPC", "C", "C", "C01", "C01", "C01");

    WBS_Generator(WBS_ID, WBS_ParentID, WBS_Desc);
}

function WBS_Generator(WBS_ID, WBS_ParentID, WBS_Desc) {

    
    var k = 0;
    var t = "<ol class=\"dd-list\" id=\"SubNode_EPC1\"><li data-id=\"" + k + "\" class=\"dd-item\" id=\"Node_EPC\"><div class=\"dd-handle\">خط 2 قطار شهری مشهد</div></li></ol>";
    document.getElementById("nestable").innerHTML += t;
    k++;

    for (i = 0; i < WBS_ID.length; i++) {
        var pnode = document.getElementById("Node_" + WBS_ParentID[i]);
        if (pnode == null) alert(WBS_ParentID[i]);
        if (document.getElementById("SubNode_" + WBS_ParentID[i]) == null) {
            pnode.innerHTML = "<button data-action=\"collapse\" type=\"button\" style=\"display: block;\">Collapse</button><button data-action=\"expand\" type=\"button\" style=\"display: none;\">Expand</button>" + pnode.innerHTML + "<ol class=\"dd-list\" id=\"SubNode_" + WBS_ParentID[i] + "\"></ol>";
        }
        document.getElementById("SubNode_" + WBS_ParentID[i]).innerHTML += "<li data-id=\"" + k + "\" class=\"dd-item dd-collapsed\" id=\"Node_" + WBS_ID[i] + "\"><div class=\"dd-handle\">" + WBS_Desc[i] + "</div></li>"

        k++;
    }

    $("#nestable").collapseAll();

}

function SetStationMap(t) {
    var s = t.split('-')[0];

    document.getElementById("imgframe").setAttribute("src", "VTStationsFrame.aspx?=" + t);

}

function VT_SetTarget(t,i) {
    document.getElementById("ctl00_ContentPlaceHolder1_txtlTarget").value = t;
    document.getElementById("ctl00_ContentPlaceHolder1_txtlTargetID").value = i;
}

function VT_SetTarget1(t, i) {

    var m = document.getElementById("posicon");
    if (m.style.display == 'block') {
        m.style.display = 'none';
    }

    var tt = document.getElementsByName("ExtantPos");

    for (w = 0; w < tt.length; w++) {        
        tt[w].setAttribute("src", "images/Camera.png");
    }

    document.getElementById("C_" + i).setAttribute("src", "images/Camera_Blue.png");

    //parent.document.getElementById("ctl00_ContentPlaceHolder1_txtmouseleft1").value = (x / dwidth);
    //parent.document.getElementById("ctl00_ContentPlaceHolder1_txtmousetop1").value = y / dheight;

    //document.getElementById("ctl00_ContentPlaceHolder1_txtlTarget").value = t;
    parent.document.getElementById("ctl00_ContentPlaceHolder1_txtTargetPosID").value = i;
}