module.exports = cds.service.impl(async function (srv) {

    srv.on('setDefaultValue', async (req) => {
        return { descr: 'Hello Sam' }
    })
})