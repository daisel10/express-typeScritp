import bcrypt from "bcrypt";


export async function hashPassword(password:string){
    return await bcrypt.hash(password, 10)
}

export async function comparePassword(password:string, passwordHash:string) {

    return await bcrypt.compare(password, passwordHash)
    
}