using {com.cnhi.btp.prapprovalsrvs as schema} from '../db/data-model';

@path: '/api/v2/srv/ZPRAPPROVALSRV'
service ZPRAPPROVALSRV {
  entity PurchaceReqSet as projection on schema.PurchaceReq;
  entity CommentSet as projection on schema.Comments;
  entity HistorySet as projection on schema.History;
}