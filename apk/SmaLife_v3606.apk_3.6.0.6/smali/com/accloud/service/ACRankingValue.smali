.class public Lcom/accloud/service/ACRankingValue;
.super Ljava/lang/Object;
.source "ACRankingValue.java"


# instance fields
.field private place:J

.field private profile:Lcom/accloud/service/ACObject;

.field private score:D

.field private timestamp:J

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(JDJJLcom/accloud/service/ACObject;)V
    .locals 1
    .param p1, "userId"    # J
    .param p3, "score"    # D
    .param p5, "place"    # J
    .param p7, "timestamp"    # J
    .param p9, "profile"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p7, p0, Lcom/accloud/service/ACRankingValue;->timestamp:J

    .line 20
    iput-wide p1, p0, Lcom/accloud/service/ACRankingValue;->userId:J

    .line 21
    iput-wide p3, p0, Lcom/accloud/service/ACRankingValue;->score:D

    .line 22
    iput-wide p5, p0, Lcom/accloud/service/ACRankingValue;->place:J

    .line 23
    iput-object p9, p0, Lcom/accloud/service/ACRankingValue;->profile:Lcom/accloud/service/ACObject;

    .line 24
    return-void
.end method


# virtual methods
.method public getPlace()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/accloud/service/ACRankingValue;->place:J

    return-wide v0
.end method

.method public getProfile()Lcom/accloud/service/ACObject;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/accloud/service/ACRankingValue;->profile:Lcom/accloud/service/ACObject;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/accloud/service/ACRankingValue;->score:D

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/accloud/service/ACRankingValue;->timestamp:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/accloud/service/ACRankingValue;->userId:J

    return-wide v0
.end method

.method public setProfile(Lcom/accloud/service/ACObject;)V
    .locals 0
    .param p1, "profile"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/accloud/service/ACRankingValue;->profile:Lcom/accloud/service/ACObject;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACRankingValue{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRankingValue;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRankingValue;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRankingValue;->score:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRankingValue;->place:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACRankingValue;->profile:Lcom/accloud/service/ACObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
