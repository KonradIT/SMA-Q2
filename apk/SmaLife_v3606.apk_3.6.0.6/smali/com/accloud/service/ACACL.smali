.class public Lcom/accloud/service/ACACL;
.super Ljava/lang/Object;
.source "ACACL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/accloud/service/ACACL$OpType;
    }
.end annotation


# static fields
.field public static readTag:Ljava/lang/String;

.field public static writeTag:Ljava/lang/String;


# instance fields
.field private isPublicReadAllow:Z

.field private isPublicWriteAllow:Z

.field private userAccessObj:Lcom/accloud/service/ACObject;

.field private userDenyObj:Lcom/accloud/service/ACObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "read"

    sput-object v0, Lcom/accloud/service/ACACL;->readTag:Ljava/lang/String;

    .line 14
    const-string v0, "write"

    sput-object v0, Lcom/accloud/service/ACACL;->writeTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/accloud/service/ACACL;->isPublicReadAllow:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/accloud/service/ACACL;->isPublicWriteAllow:Z

    .line 28
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    iput-object v0, p0, Lcom/accloud/service/ACACL;->userAccessObj:Lcom/accloud/service/ACObject;

    .line 29
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    iput-object v0, p0, Lcom/accloud/service/ACACL;->userDenyObj:Lcom/accloud/service/ACObject;

    .line 32
    return-void
.end method

.method private getAuthObjectByKey(Lcom/accloud/service/ACObject;Ljava/lang/String;Z)Lcom/accloud/service/ACObject;
    .locals 1
    .param p1, "accessObj"    # Lcom/accloud/service/ACObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "create"    # Z

    .prologue
    .line 205
    invoke-virtual {p1, p2}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/accloud/service/ACObject;

    .line 206
    .local v0, "authObj":Lcom/accloud/service/ACObject;
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 207
    new-instance v0, Lcom/accloud/service/ACObject;

    .end local v0    # "authObj":Lcom/accloud/service/ACObject;
    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 208
    .restart local v0    # "authObj":Lcom/accloud/service/ACObject;
    invoke-virtual {p1, p2, v0}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 210
    :cond_0
    return-object v0
.end method

.method private getUserKey(J)Ljava/lang/String;
    .locals 3
    .param p1, "user"    # J

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setUserAccessMap(Lcom/accloud/service/ACObject;Lcom/accloud/service/ACACL$OpType;ZLjava/lang/String;)V
    .locals 4
    .param p1, "accessObj"    # Lcom/accloud/service/ACObject;
    .param p2, "opType"    # Lcom/accloud/service/ACACL$OpType;
    .param p3, "allow"    # Z
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/accloud/service/ACACL$OpType;->READ:Lcom/accloud/service/ACACL$OpType;

    if-ne p2, v2, :cond_2

    .line 174
    const-string v1, "read"

    .line 179
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p4, v3}, Lcom/accloud/service/ACACL;->getAuthObjectByKey(Lcom/accloud/service/ACObject;Ljava/lang/String;Z)Lcom/accloud/service/ACObject;

    move-result-object v0

    .line 180
    .local v0, "authObj":Lcom/accloud/service/ACObject;
    if-eqz p3, :cond_3

    .line 181
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 185
    :cond_1
    :goto_1
    return-void

    .line 175
    .end local v0    # "authObj":Lcom/accloud/service/ACObject;
    :cond_2
    sget-object v2, Lcom/accloud/service/ACACL$OpType;->WRITE:Lcom/accloud/service/ACACL$OpType;

    if-ne p2, v2, :cond_0

    .line 176
    const-string v1, "write"

    goto :goto_0

    .line 182
    .restart local v0    # "authObj":Lcom/accloud/service/ACObject;
    :cond_3
    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->delete(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public isAllowed(Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 8
    .param p1, "user"    # Ljava/lang/Long;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/accloud/service/ACACL;->getUserKey(J)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/accloud/service/ACACL;->userDenyObj:Lcom/accloud/service/ACObject;

    invoke-direct {p0, v2, v1, v3}, Lcom/accloud/service/ACACL;->getAuthObjectByKey(Lcom/accloud/service/ACObject;Ljava/lang/String;Z)Lcom/accloud/service/ACObject;

    move-result-object v0

    .line 129
    .local v0, "authObj":Lcom/accloud/service/ACObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 168
    :goto_0
    return v2

    .line 144
    :cond_0
    sget-object v2, Lcom/accloud/service/ACACL;->readTag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/accloud/service/ACACL;->isPublicReadAllow:Z

    if-eqz v2, :cond_1

    move v2, v4

    .line 145
    goto :goto_0

    .line 147
    :cond_1
    sget-object v2, Lcom/accloud/service/ACACL;->writeTag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/accloud/service/ACACL;->isPublicWriteAllow:Z

    if-eqz v2, :cond_2

    move v2, v4

    .line 148
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/accloud/service/ACACL;->getUserKey(J)Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/accloud/service/ACACL;->userAccessObj:Lcom/accloud/service/ACObject;

    invoke-direct {p0, v2, v1, v3}, Lcom/accloud/service/ACACL;->getAuthObjectByKey(Lcom/accloud/service/ACObject;Ljava/lang/String;Z)Lcom/accloud/service/ACObject;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p2}, Lcom/accloud/service/ACObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 155
    goto :goto_0

    :cond_3
    move v2, v3

    .line 168
    goto :goto_0
.end method

.method public isReadAllowed(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "user"    # Ljava/lang/Long;

    .prologue
    .line 116
    sget-object v0, Lcom/accloud/service/ACACL;->readTag:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/accloud/service/ACACL;->isAllowed(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWriteAllowed(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "user"    # Ljava/lang/Long;

    .prologue
    .line 121
    sget-object v0, Lcom/accloud/service/ACACL;->writeTag:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/accloud/service/ACACL;->isAllowed(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPublicReadAccess(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/accloud/service/ACACL;->isPublicReadAllow:Z

    .line 41
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/accloud/service/ACACL;->isPublicWriteAllow:Z

    .line 50
    return-void
.end method

.method public setUserAccess(Lcom/accloud/service/ACACL$OpType;J)V
    .locals 4
    .param p1, "opType"    # Lcom/accloud/service/ACACL$OpType;
    .param p2, "userId"    # J

    .prologue
    .line 59
    iget-object v0, p0, Lcom/accloud/service/ACACL;->userAccessObj:Lcom/accloud/service/ACObject;

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3}, Lcom/accloud/service/ACACL;->getUserKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/accloud/service/ACACL;->setUserAccessMap(Lcom/accloud/service/ACObject;Lcom/accloud/service/ACACL$OpType;ZLjava/lang/String;)V

    .line 60
    return-void
.end method

.method public setUserDeny(Lcom/accloud/service/ACACL$OpType;J)V
    .locals 4
    .param p1, "opType"    # Lcom/accloud/service/ACACL$OpType;
    .param p2, "userId"    # J

    .prologue
    .line 79
    iget-object v0, p0, Lcom/accloud/service/ACACL;->userDenyObj:Lcom/accloud/service/ACObject;

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3}, Lcom/accloud/service/ACACL;->getUserKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/accloud/service/ACACL;->setUserAccessMap(Lcom/accloud/service/ACObject;Lcom/accloud/service/ACACL$OpType;ZLjava/lang/String;)V

    .line 80
    return-void
.end method

.method public toObject()Lcom/accloud/service/ACObject;
    .locals 3

    .prologue
    .line 232
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 233
    .local v0, "aclObj":Lcom/accloud/service/ACObject;
    const-string v1, "isPublicReadAllow"

    iget-boolean v2, p0, Lcom/accloud/service/ACACL;->isPublicReadAllow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 234
    const-string v1, "isPublicWriteAllow"

    iget-boolean v2, p0, Lcom/accloud/service/ACACL;->isPublicWriteAllow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 235
    const-string v1, "userAccessMap"

    iget-object v2, p0, Lcom/accloud/service/ACACL;->userAccessObj:Lcom/accloud/service/ACObject;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 236
    const-string v1, "userDenyMap"

    iget-object v2, p0, Lcom/accloud/service/ACACL;->userDenyObj:Lcom/accloud/service/ACObject;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 239
    return-object v0
.end method

.method public unsetUserAccess(Lcom/accloud/service/ACACL$OpType;J)V
    .locals 4
    .param p1, "opType"    # Lcom/accloud/service/ACACL$OpType;
    .param p2, "userId"    # J

    .prologue
    .line 69
    iget-object v0, p0, Lcom/accloud/service/ACACL;->userAccessObj:Lcom/accloud/service/ACObject;

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3}, Lcom/accloud/service/ACACL;->getUserKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/accloud/service/ACACL;->setUserAccessMap(Lcom/accloud/service/ACObject;Lcom/accloud/service/ACACL$OpType;ZLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public unsetUserDeny(Lcom/accloud/service/ACACL$OpType;J)V
    .locals 4
    .param p1, "opType"    # Lcom/accloud/service/ACACL$OpType;
    .param p2, "userId"    # J

    .prologue
    .line 89
    iget-object v0, p0, Lcom/accloud/service/ACACL;->userDenyObj:Lcom/accloud/service/ACObject;

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3}, Lcom/accloud/service/ACACL;->getUserKey(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/accloud/service/ACACL;->setUserAccessMap(Lcom/accloud/service/ACObject;Lcom/accloud/service/ACACL$OpType;ZLjava/lang/String;)V

    .line 90
    return-void
.end method
