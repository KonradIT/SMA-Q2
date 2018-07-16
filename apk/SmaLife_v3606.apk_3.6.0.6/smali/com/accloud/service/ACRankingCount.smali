.class public Lcom/accloud/service/ACRankingCount;
.super Ljava/lang/Object;
.source "ACRankingCount.java"


# instance fields
.field private count:J

.field private timestamp:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "count"    # J

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/accloud/service/ACRankingCount;->timestamp:J

    .line 11
    iput-wide p3, p0, Lcom/accloud/service/ACRankingCount;->count:J

    .line 12
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/accloud/service/ACRankingCount;->count:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/accloud/service/ACRankingCount;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACRankingCount{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRankingCount;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACRankingCount;->count:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
