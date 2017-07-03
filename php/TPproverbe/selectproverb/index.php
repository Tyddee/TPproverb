<?php
include_once 'includes/proverb.php';
include '../../includes/util.inc.php';
include '../../includes/header.php';
include '../../includes/menu.php';
?>

<?php
// $proverbList = getProverbList();
$categoryList = getProverbCategoryList();

?>

<!DOCTYPE html>
<html>
<head>
    
</head>
<body>
<h1>Proverbes App</h1>
<p> Choisissez un thème pour obtenir un proverbe :</p>

<div class="well" id="formProverb">
    <form>
        <label>Choisir une thématique</label>
        <select id="proverbList" name="proverb">
        <option>Faites votre choix</option>
	        <?php
		        foreach ($categoryList as $value) {
		        	echo "<option value=\"" . $value["catégorie"] . "\">" . $value["catégorie"] . "</option>";
		        }
	        ?>
        </select>
        <button id="validate">ok</button>
    </form>
</div>

<div id="detailsProverb"><div class="corps"></div></div><br />
<div id="origineProverb"><div class="origine"></div></div>


<script src= "/projet/php/TPproverbe/selectproverb/js/zepto.min.js"></script>
<script src= "/projet/php/TPproverbe/selectproverb/js/lodash.js"></script>
<script src= "/projet/php/TPproverbe/selectproverb/js/proverb.js"></script>

<?php include '../../includes/footer.php';?>
</body>
</html>
