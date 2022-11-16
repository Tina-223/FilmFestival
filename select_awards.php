<HTML>
<HEAD><TITLE> Choose Awards </TITLE></HEAD>
<p>
    Choose one</br>
    <select name="Awards" onchange="window.open(value,'_self');" >
        <option value="">Select</option>
        <option value="academy.php" selected>Academy Awards</option>
        <option value="Venice.php" selected>Venice Film Festival</option>
        <option value="Berlin.php" selected>Berlin International Film Festival</option>
        <option value="Cannes.php" selected>Cannes Film Festival</option>
    </select>
    <?php
    if(isset($_POST['Awards'])){
        $varAwards=$_POST['Awards'];
        $errorMessage="error";
    }?>
</p>

</HTML>


