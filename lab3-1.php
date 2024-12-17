<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

<div class="container"><h2 class="p1"> <i class="fa-solid fa-book"></i> เพิ่มข้อมูลหนังสือ</h2></div>
<form action="action.php" method=post>
<div class="container">
<div class="album py-5 bg-light">

<div class="mb-3 p-3 ">
  <label for="exampleFormControlInput1" class="form-label">Bookname</label>
  <input type="text" class="form-control w-50" name="tbookname" placeholder="name">
</div>
<div class="mb-3 p-3 ">
  <label for="exampleFormControlInput1" class="form-label">Author</label>
  <input  class="form-control w-50" name="tauthor" placeholder="author">
</div>
<div class="mb-3 p-3 ">
  <label for="exampleFormControlInput1" class="form-label">Price</label>
  <input type="number"  class="form-control w-50" name="tprice" placeholder="price">
</div>
<div class="mb-3 p-3 ">
  <label for="exampleFormControlInput1" class="form-label">Stock</label>
  <input type="number" class="form-control w-50" name="tstock" placeholder="stock">
</div>
<div class="mb-3 p-3 ">
<label for="exampleFormControlInput1" class="form-label ">Booktype</label>
  <select  class="form-control w-50 " name="tbooktype">
<?php
    include"dbcon.php";
    $sql="SELECT * FROM tbbooktype";
    $query=$conn->query($sql);
    while($row=$query->fetch_object()){
?>
    <option value="<?=$row->booktypeid?>">
        <?=$row->booktypename?></option>

<?PHP
    }
?>
 </select>
 </div>
  <div class="mb-3 p-3 "><input type="submit" name="bSubmitBook" class="btn btn-outline-success" value="save"></div>
  </div>
  </form>
</div>
</div>
<div>