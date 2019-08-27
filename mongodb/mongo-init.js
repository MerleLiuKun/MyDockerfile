let new_db = 'test';
let new_user = 'test';
let new_pwd = 'test';

db = db.getSiblingDB(new_db);
db.createUser(
    {
        user: new_user,
        pwd: new_pwd,
        roles: [
            {
                role: "readWrite",
                db: new_db
            }
        ]
    }
);
db.auth(new_user, new_pwd);
db.test.drop();
db.test.save({
    'test': 'test'
});