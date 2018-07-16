.class public Lcom/umeng/message/tag/TagManager$Result;
.super Ljava/lang/Object;
.source "TagManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/tag/TagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public errors:Ljava/lang/String;

.field public jsonString:Ljava/lang/String;

.field public remain:I

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;)V
    .locals 2

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v0

    sget-object v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-virtual {v0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "success"

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->status:Ljava/lang/String;

    .line 262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getInfo()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$Info;->getTagRemainCount()I

    move-result v0

    iput v0, p0, Lcom/umeng/message/tag/TagManager$Result;->remain:I

    .line 263
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->errors:Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$Result;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/tag/TagManager$Result;->remain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$Result;->errors:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->jsonString:Ljava/lang/String;

    .line 266
    return-void

    .line 257
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v0

    sget-object v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->INVALID_REQUEST:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-virtual {v0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    const-string v0, "invalid_request"

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->status:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getCode()Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v0

    sget-object v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SERVER_EXCEPTION:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-virtual {v0, v1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "server_exception"

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const-string v0, "success"

    const-string v1, "fail"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->status:Ljava/lang/String;

    .line 248
    const-string v0, "remain"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/tag/TagManager$Result;->remain:I

    .line 249
    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->errors:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->jsonString:Ljava/lang/String;

    .line 252
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$Result;->jsonString:Ljava/lang/String;

    return-object v0
.end method
