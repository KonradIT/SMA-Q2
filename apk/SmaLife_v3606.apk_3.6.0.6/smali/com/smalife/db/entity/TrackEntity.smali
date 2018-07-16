.class public Lcom/smalife/db/entity/TrackEntity;
.super Ljava/lang/Object;
.source "TrackEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private latitude:D

.field private locationModel:I

.field private longitude:D

.field private sync:I

.field private track_ID:J

.field private track_date:Ljava/lang/String;

.field private track_time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/db/entity/TrackEntity;->sync:I

    .line 5
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/smalife/db/entity/TrackEntity;->latitude:D

    return-wide v0
.end method

.method public getLocationModel()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/smalife/db/entity/TrackEntity;->locationModel:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/smalife/db/entity/TrackEntity;->longitude:D

    return-wide v0
.end method

.method public getSync()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/smalife/db/entity/TrackEntity;->sync:I

    return v0
.end method

.method public getTrack_ID()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/smalife/db/entity/TrackEntity;->track_ID:J

    return-wide v0
.end method

.method public getTrack_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smalife/db/entity/TrackEntity;->track_date:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack_time()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/smalife/db/entity/TrackEntity;->track_time:J

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/smalife/db/entity/TrackEntity;->latitude:D

    .line 46
    return-void
.end method

.method public setLocationModel(I)V
    .locals 0
    .param p1, "locationModel"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/smalife/db/entity/TrackEntity;->locationModel:I

    .line 59
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/smalife/db/entity/TrackEntity;->longitude:D

    .line 52
    return-void
.end method

.method public setSync(I)V
    .locals 0
    .param p1, "sync"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/smalife/db/entity/TrackEntity;->sync:I

    .line 22
    return-void
.end method

.method public setTrack_ID(J)V
    .locals 1
    .param p1, "track_ID"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/smalife/db/entity/TrackEntity;->track_ID:J

    .line 40
    return-void
.end method

.method public setTrack_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "track_date"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smalife/db/entity/TrackEntity;->track_date:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTrack_time(J)V
    .locals 1
    .param p1, "track_time"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/smalife/db/entity/TrackEntity;->track_time:J

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrackEntity [track_ID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/smalife/db/entity/TrackEntity;->track_ID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track_date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/smalife/db/entity/TrackEntity;->track_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smalife/db/entity/TrackEntity;->track_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget-wide v2, p0, Lcom/smalife/db/entity/TrackEntity;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smalife/db/entity/TrackEntity;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/smalife/db/entity/TrackEntity;->locationModel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/TrackEntity;->sync:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
