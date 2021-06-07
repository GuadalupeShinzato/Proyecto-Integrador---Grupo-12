module.exports = {
    index: (req, res) =>{
        res.render('form');
    },

    crear: (req, res) => {
        console.log(req.file.filename);
        res.render('form');
    },
}