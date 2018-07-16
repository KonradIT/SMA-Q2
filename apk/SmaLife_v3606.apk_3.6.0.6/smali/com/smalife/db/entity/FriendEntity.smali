.class public Lcom/smalife/db/entity/FriendEntity;
.super Ljava/lang/Object;
.source "FriendEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private friend_Id:I

.field private friend_account:Ljava/lang/String;

.field private friend_header:Ljava/lang/String;

.field private isFriend:I

.field private sex:I

.field private user_account:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriend_Id()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/smalife/db/entity/FriendEntity;->friend_Id:I

    return v0
.end method

.method public getFriend_account()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/db/entity/FriendEntity;->friend_account:Ljava/lang/String;

    return-object v0
.end method

.method public getFriend_header()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smalife/db/entity/FriendEntity;->friend_header:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFriend()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/smalife/db/entity/FriendEntity;->isFriend:I

    return v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/smalife/db/entity/FriendEntity;->sex:I

    return v0
.end method

.method public getUser_account()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smalife/db/entity/FriendEntity;->user_account:Ljava/lang/String;

    return-object v0
.end method

.method public setFriend_Id(I)V
    .locals 0
    .param p1, "friend_Id"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/smalife/db/entity/FriendEntity;->friend_Id:I

    .line 31
    return-void
.end method

.method public setFriend_account(Ljava/lang/String;)V
    .locals 0
    .param p1, "friend_account"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/smalife/db/entity/FriendEntity;->friend_account:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setFriend_header(Ljava/lang/String;)V
    .locals 0
    .param p1, "friend_header"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/smalife/db/entity/FriendEntity;->friend_header:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setIsFriend(I)V
    .locals 0
    .param p1, "isFriend"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/smalife/db/entity/FriendEntity;->isFriend:I

    .line 71
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .param p1, "sex"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/smalife/db/entity/FriendEntity;->sex:I

    .line 63
    return-void
.end method

.method public setUser_account(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_account"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/smalife/db/entity/FriendEntity;->user_account:Ljava/lang/String;

    .line 39
    return-void
.end method
