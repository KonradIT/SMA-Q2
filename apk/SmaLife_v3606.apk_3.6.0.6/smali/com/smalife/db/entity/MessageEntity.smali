.class public Lcom/smalife/db/entity/MessageEntity;
.super Ljava/lang/Object;
.source "MessageEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _id:I

.field private content:Ljava/lang/String;

.field private isuccess:I

.field private receiver:Ljava/lang/String;

.field private send_time:Ljava/lang/String;

.field private sender:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/db/entity/MessageEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getIsuccess()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/smalife/db/entity/MessageEntity;->isuccess:I

    return v0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smalife/db/entity/MessageEntity;->receiver:Ljava/lang/String;

    return-object v0
.end method

.method public getSend_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smalife/db/entity/MessageEntity;->send_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/smalife/db/entity/MessageEntity;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/smalife/db/entity/MessageEntity;->type:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/smalife/db/entity/MessageEntity;->_id:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/smalife/db/entity/MessageEntity;->content:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setIsuccess(I)V
    .locals 0
    .param p1, "isuccess"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/smalife/db/entity/MessageEntity;->isuccess:I

    .line 80
    return-void
.end method

.method public setReceiver(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/smalife/db/entity/MessageEntity;->receiver:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSend_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "send_time"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/smalife/db/entity/MessageEntity;->send_time:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/smalife/db/entity/MessageEntity;->sender:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/smalife/db/entity/MessageEntity;->type:I

    .line 48
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/smalife/db/entity/MessageEntity;->_id:I

    .line 32
    return-void
.end method
