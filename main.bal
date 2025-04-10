import ballerina/http;
import ballerinax/ai;

listener ai:Listener myChatListener = new (listenOn = check http:getDefaultListener());

service /myChat on myChatListener {
    resource function post chat(@http:Payload ai:ChatReqMessage request) returns ai:ChatRespMessage|error {

        string stringResult = check _myChatAgent->run(request.message, request.sessionId);
        return {message: stringResult};
    }
} 
