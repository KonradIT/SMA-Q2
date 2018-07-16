.class public Lcom/smalife/db/entity/SportEntity;
.super Ljava/lang/Object;
.source "SportEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private OffSet:I

.field private calorie:F

.field private countDate:Ljava/lang/String;

.field private distance:F

.field private macAddress:Ljava/lang/String;

.field private speedAvg:F

.field private speedMax:F

.field private sportTime:I

.field private sport_id:J

.field private sprot_type:I

.field private steps:I

.field private sync:I

.field private totalDis:F

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/smalife/db/entity/SportEntity;->calorie:F

    .line 31
    iput v0, p0, Lcom/smalife/db/entity/SportEntity;->totalDis:F

    .line 32
    iput v1, p0, Lcom/smalife/db/entity/SportEntity;->steps:I

    .line 34
    iput v1, p0, Lcom/smalife/db/entity/SportEntity;->sync:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCalorie()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->calorie:F

    return v0
.end method

.method public getCountDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smalife/db/entity/SportEntity;->countDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->distance:F

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/smalife/db/entity/SportEntity;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOffSet()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->OffSet:I

    return v0
.end method

.method public getSpeedAvg()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->speedAvg:F

    return v0
.end method

.method public getSpeedMax()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->speedMax:F

    return v0
.end method

.method public getSportTime()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->sportTime:I

    return v0
.end method

.method public getSport_id()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/smalife/db/entity/SportEntity;->sport_id:J

    return-wide v0
.end method

.method public getSprot_type()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->sprot_type:I

    return v0
.end method

.method public getSteps()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->steps:I

    return v0
.end method

.method public getSync()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->sync:I

    return v0
.end method

.method public getTotalDis()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/smalife/db/entity/SportEntity;->totalDis:F

    return v0
.end method

.method public getUserAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/smalife/db/entity/SportEntity;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setCalorie(F)V
    .locals 0
    .param p1, "calorie"    # F

    .prologue
    .line 142
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->calorie:F

    .line 143
    return-void
.end method

.method public setCountDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "countDate"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/smalife/db/entity/SportEntity;->countDate:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 118
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->distance:F

    .line 119
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/smalife/db/entity/SportEntity;->macAddress:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setOffSet(I)V
    .locals 0
    .param p1, "offSet"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->OffSet:I

    .line 71
    return-void
.end method

.method public setSpeedAvg(F)V
    .locals 0
    .param p1, "speedAvg"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->speedAvg:F

    .line 127
    return-void
.end method

.method public setSpeedMax(F)V
    .locals 0
    .param p1, "speedMax"    # F

    .prologue
    .line 134
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->speedMax:F

    .line 135
    return-void
.end method

.method public setSportTime(I)V
    .locals 0
    .param p1, "sportTime"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->sportTime:I

    .line 103
    return-void
.end method

.method public setSport_id(J)V
    .locals 1
    .param p1, "sport_id"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/smalife/db/entity/SportEntity;->sport_id:J

    .line 43
    return-void
.end method

.method public setSprot_type(I)V
    .locals 0
    .param p1, "sprot_type"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->sprot_type:I

    .line 87
    return-void
.end method

.method public setSteps(I)V
    .locals 0
    .param p1, "steps"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->steps:I

    .line 111
    return-void
.end method

.method public setSync(I)V
    .locals 0
    .param p1, "sync"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->sync:I

    .line 51
    return-void
.end method

.method public setTotalDis(F)V
    .locals 0
    .param p1, "totalDis"    # F

    .prologue
    .line 150
    iput p1, p0, Lcom/smalife/db/entity/SportEntity;->totalDis:F

    .line 151
    return-void
.end method

.method public setUserAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/smalife/db/entity/SportEntity;->userAccount:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SportEntity [userAccount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/db/entity/SportEntity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", macAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/smalife/db/entity/SportEntity;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/db/entity/SportEntity;->countDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sportTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->sportTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OffSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->OffSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    const-string v1, ", speedAvg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->speedAvg:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speedMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->speedMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    const-string v1, ", calorie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->calorie:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalDis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->totalDis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sprot_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->sprot_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget v1, p0, Lcom/smalife/db/entity/SportEntity;->sync:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sport_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smalife/db/entity/SportEntity;->sport_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
