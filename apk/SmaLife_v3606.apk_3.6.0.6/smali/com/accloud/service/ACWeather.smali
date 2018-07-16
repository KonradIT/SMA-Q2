.class public Lcom/accloud/service/ACWeather;
.super Ljava/lang/Object;
.source "ACWeather.java"


# instance fields
.field humidity:I

.field maxHumidity:I

.field maxTemperature:D

.field minHumidity:I

.field minTemperature:D

.field temperature:D

.field timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDIII)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "temperature"    # D
    .param p4, "minTemperature"    # D
    .param p6, "maxTemperature"    # D
    .param p8, "humidity"    # I
    .param p9, "minHumidity"    # I
    .param p10, "maxHumidity"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/accloud/service/ACWeather;->timestamp:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lcom/accloud/service/ACWeather;->temperature:D

    .line 31
    iput-wide p4, p0, Lcom/accloud/service/ACWeather;->minTemperature:D

    .line 32
    iput-wide p6, p0, Lcom/accloud/service/ACWeather;->maxTemperature:D

    .line 33
    iput p8, p0, Lcom/accloud/service/ACWeather;->humidity:I

    .line 34
    iput p9, p0, Lcom/accloud/service/ACWeather;->minHumidity:I

    .line 35
    iput p10, p0, Lcom/accloud/service/ACWeather;->maxHumidity:I

    .line 36
    return-void
.end method


# virtual methods
.method public getHumidity()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/accloud/service/ACWeather;->humidity:I

    return v0
.end method

.method public getMaxHumidity()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/accloud/service/ACWeather;->maxHumidity:I

    return v0
.end method

.method public getMaxTemperature()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/accloud/service/ACWeather;->maxTemperature:D

    return-wide v0
.end method

.method public getMinHumidity()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/accloud/service/ACWeather;->minHumidity:I

    return v0
.end method

.method public getMinTemperature()D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/accloud/service/ACWeather;->minTemperature:D

    return-wide v0
.end method

.method public getTemperature()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/accloud/service/ACWeather;->temperature:D

    return-wide v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/accloud/service/ACWeather;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setHumidity(I)V
    .locals 0
    .param p1, "humidity"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/accloud/service/ACWeather;->humidity:I

    .line 76
    return-void
.end method

.method public setMaxHumidity(I)V
    .locals 0
    .param p1, "maxHumidity"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/accloud/service/ACWeather;->maxHumidity:I

    .line 92
    return-void
.end method

.method public setMaxTemperature(D)V
    .locals 1
    .param p1, "maxTemperature"    # D

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/accloud/service/ACWeather;->maxTemperature:D

    .line 68
    return-void
.end method

.method public setMinHumidity(I)V
    .locals 0
    .param p1, "minHumidity"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/accloud/service/ACWeather;->minHumidity:I

    .line 84
    return-void
.end method

.method public setMinTemperature(D)V
    .locals 1
    .param p1, "minTemperature"    # D

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/accloud/service/ACWeather;->minTemperature:D

    .line 60
    return-void
.end method

.method public setTemperature(D)V
    .locals 1
    .param p1, "temperature"    # D

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/accloud/service/ACWeather;->temperature:D

    .line 52
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/accloud/service/ACWeather;->timestamp:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACWeather{timestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACWeather;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACWeather;->temperature:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACWeather;->minTemperature:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACWeather;->maxTemperature:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", humidity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACWeather;->humidity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minHumidity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACWeather;->minHumidity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHumidity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACWeather;->maxHumidity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
