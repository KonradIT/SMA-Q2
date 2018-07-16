.class public Lcom/smalife/db/entity/UserEntity;
.super Ljava/lang/Object;
.source "UserEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _id:I

.field private account:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private age:Ljava/lang/Integer;

.field private agree:I

.field private aim_steps:Ljava/lang/String;

.field private client_id:Ljava/lang/String;

.field private friend_account:Ljava/lang/String;

.field private header_url:Ljava/lang/String;

.field private hight:Ljava/lang/Integer;

.field private nickName:Ljava/lang/String;

.field private sex:Ljava/lang/Integer;

.field private token:Ljava/lang/String;

.field private unit:Ljava/lang/Integer;

.field private weight:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->account:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->nickName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->client_id:Ljava/lang/String;

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->hight:Ljava/lang/Integer;

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->weight:Ljava/lang/Float;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->sex:Ljava/lang/Integer;

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->age:Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->unit:Ljava/lang/Integer;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->header_url:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/db/entity/UserEntity;->address:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->age:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAgree()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/smalife/db/entity/UserEntity;->agree:I

    return v0
.end method

.method public getAim_steps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->aim_steps:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->client_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFriend_account()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->friend_account:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->header_url:Ljava/lang/String;

    return-object v0
.end method

.method public getHight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->hight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->sex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->unit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWeight()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smalife/db/entity/UserEntity;->weight:Ljava/lang/Float;

    return-object v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/smalife/db/entity/UserEntity;->_id:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->account:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->address:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setAge(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "age"    # Ljava/lang/Integer;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->age:Ljava/lang/Integer;

    .line 93
    return-void
.end method

.method public setAgree(I)V
    .locals 0
    .param p1, "agree"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/smalife/db/entity/UserEntity;->agree:I

    .line 129
    return-void
.end method

.method public setAim_steps(Ljava/lang/String;)V
    .locals 0
    .param p1, "aim_steps"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->aim_steps:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setClient_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "client_id"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->client_id:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setFriend_account(Ljava/lang/String;)V
    .locals 0
    .param p1, "friend_account"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->friend_account:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setHeader_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "header_url"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->header_url:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setHight(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "hight"    # Ljava/lang/Integer;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->hight:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->nickName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSex(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "sex"    # Ljava/lang/Integer;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->sex:Ljava/lang/Integer;

    .line 87
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->token:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setUnit(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/Integer;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->unit:Ljava/lang/Integer;

    .line 135
    return-void
.end method

.method public setWeight(Ljava/lang/Float;)V
    .locals 0
    .param p1, "weight"    # Ljava/lang/Float;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smalife/db/entity/UserEntity;->weight:Ljava/lang/Float;

    .line 81
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/smalife/db/entity/UserEntity;->_id:I

    .line 51
    return-void
.end method
