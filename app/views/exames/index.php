<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../public/css/style.css">
    <title>Document</title>
</head>
<body>
    <h3><?= $data['title']; ?></h3>
    <h3><?= $data['aantal_exames']; ?></h3>
    <table>
        <thead>
            <th>StudentId</th>
            <th>Rijschool</th>
            <th>Stad</th>
            <th>Rijbewijscategorie</th>
            <th>Datum</th>
            <th>Uitslag</th>
        </thead>
        <tbody>
            <?= $data['rows'];  ?>
        </tbody>
    </table>
    <a href="<?= URLROOT; ?>/home/index">home page</a>
</body>
</html>