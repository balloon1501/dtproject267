<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">



<h2 class="p1">
    <i class="fa-solid fa-house"></i> ความหมายของ CSS</h2>
<div class="content">
CSS ย่อมาจาก Cascading Style Sheets คือภาษาที่ใช้อธิบายรูปร่างและลักษณะของ ไฟล์ HTML 
• Style Sheet คือไฟล์ที่เขียนด้วยภาษา CSS เพื่อให้ไฟล์ HTML อ้างอิงการกำหนดรูปร่าง และลักษณะ
<head>
</div>
<h2 class="p1">
<i class="fa-solid fa-bars"></i>  รูปแบบการใช้งาน CSS</h2>
<div class="content">
การเขียน CSS มีได้หลายรูปแบบในการจัดเก็บโค้ด หลัก ๆ ก็จะมีอยู่ 3 รูปแบบ ดังนี้
ซึ่งในแต่ละแบบก็จะมีวัตถุประสงค์ในการใช้งานแตกต่างกันไป แต่รูปแบบไวยากรณ์ของภาษา CSS ยังคงเหมือนเดิม เพียงแต่เปลี่ยนรูปแบบการจัดเก็บโค้ดของ CSS ไว้แตกต่างกันเท่านั้นเอง 
เราจะมาทำความรู้จักกับ CSS ทั้ง 3 รูปแบบ
ข้างต้นนี้กัน ดังนี้

1. Inline Style Sheet 
2. Embed Style Sheet 
3. External Style Sheet
<head>
</div>

<h2 class="p1">
    <i calss="fa-solid fa-house"></i>การสร้างฟอร์ม CSS</h2>
<div class="content">
    <form action="action.php" method="post">
    <div class="mb-3">
    <label class="form-label">FIRSTNAME</label>
            <input type="text" class="form-control" 
            name="tfirstname" 
            placeholder="ระบุชื่อ...">
    </div>
    <div class="mb-3">
    <label class="form-label">LASTNANE</label>
            <input type="text" class="form-control" 
            name="tlastname" 
            placeholder="ระบุนามสกุล....">
    </div>
    <div class="mb-3">
            <label class="form-label">EMAIL</label>
            <input type="email" class="form-control" 
            name="temail" 
            placeholder="name@example.com">
    </div>
    <div class="mb-3">
            <label  class="form-label">ADDRESS</label>
            <input type="text" class="form-control" 
            name="taddress"
            rows="3">
    </div>
    <div>
    <button type="submit" class="btn btn-primary">บันทึกข้อมูล</button>
            <div>
    </form>
    </div>

    