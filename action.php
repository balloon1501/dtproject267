<?PHP
    include"dbcon.php";
    if(isset($_REQUEST['bSubmitStudent'])){
    $firstname=$_REQUEST['tfirsname'];
    //รับค่าจาด textbox ที่ชื่อ tfirsname
    $lastname=$_REQUEST['tlastname'];
    $email=$_REQUEST['temail'];
    $address=$_REQUEST['taddress'];

    echo $firstname.$lastname.$address.$email;
    $sql="INSERT INTO tbstudent
            VALUE(null,'$firstname','$lastname','$address','$email')";
    $query=$conn->query($sql);
    echo "<META HTTP-EQUIV='refresh'
                            CONTENT='3; URL=lab2-2.php'>";

    }elseif(isset($_REQUEST['bSubmitRoom'])){
        $roomname=$_REQUEST['troomname'];
        $detail=$_REQUEST['tdetail'];
        $roomtype=$_REQUEST['troomtype'];
        echo $roomname."<br>".$detail."<br>".$roomtype;
        $sql="INSERT INTO tbroom
                VALUE(null,'$roomname','$detail','$roomtype')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                                CONTENT='2; URL=lab2-4.php'>";
    }elseif(isset($_REQUEST['bSubmitBook'])){
        $bookname=$_REQUEST['tbookname'];
        $author=$_REQUEST['tauthor'];
        $price=$_REQUEST['tprice'];
        $stock=$_REQUEST['tstock'];
        $booktype=$_REQUEST['tbooktype'];
        echo $bookname.$author.$price.$stock.$booktype;
        $sql="INSERT INTO tbbook
                VALUE(null,'$bookname','$author','$price','$stock','$booktype')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                                CONTENT='2; URL=lab3-1.php'>";
    }elseif(isset($_REQUEST['bSubmitBooktype'])){
        $booktypeid=$_REQUEST['tbooktype'];
        echo $booktypeid; 
        $sql="INSERT INTO tbbooktype
        VALUE(null,'$booktypeid')";
        $query=$conn->query($sql);
        echo "<META HTTP-EQUIV='refresh'
                                CONTENT='2; URL=lab3-2.php'>";
   }elseif(isset($_REQUEST['bSubmituser'])){
        $firstname=$_REQUEST['tfirstname'];
        $lastname=$_REQUEST['tlastname'];
        $username=$_REQUEST['tusername'];
        $password=$_REQUEST['tpassword'];
        $hashValue= md5($password);
        $sql="INSERT INTO tbuser
        VALUE(null,'$firstname','$lastname','$username','$hashValue')";
        $query=$conn->query($sql);
        echo 'เสร็จสิ้น';
        echo "<META HTTP-EQUIV='refresh'
                                CONTENT='3; URL=lab_function/lab-formregis.php'>";                          
    }elseif(isset($_REQUEST['bLogin'])){
        $username=$_REQUEST['tusername'];
        $password=md5($_REQUEST['tpassword']);

        $sql="SELECT * FROM tbuser
                WHERE username='$username'
                and password='$password'";
        $query=$conn->query($sql);
        $rs=$query->fetch_object();
        //ดึ
        $numrows=$query->num_rows;
        //
        if($numrows>0){
        echo "ล็อกอินสำเร็จ";
    }else {
        echo "รหัสผ่านไม่ถูกต้อง";
    }
        echo "<META HTTP-EQUIV='refresh'
                                CONTENT='3; URL=lab_function/lab-formregis.php'>";
    }
?>