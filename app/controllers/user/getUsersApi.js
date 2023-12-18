import { get } from "axios";

const getUsersApi = async (req, res) => {
    try {
        const response = await get("https://randomuser.me/api?results=10");
        const users = response.data;
        res.status(200).json(users);
    } catch (error) {
        console.log(error);
        res.status(500).json({message: error.message});
    }
}

export default getUsersApi;