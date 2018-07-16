.class public Lcom/smalife/db/entity/ExerciseEntity;
.super Ljava/lang/Object;
.source "ExerciseEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private calorie:F

.field private distance:F

.field private end_time:J

.field private exercise_date:Ljava/lang/String;

.field private exercise_id:J

.field private pacer:F

.field private speed:F

.field private start_time:J

.field private sync:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->sync:I

    .line 4
    return-void
.end method


# virtual methods
.method public getCalorie()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->calorie:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->distance:F

    return v0
.end method

.method public getEnd_time()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->end_time:J

    return-wide v0
.end method

.method public getExercise_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->exercise_date:Ljava/lang/String;

    return-object v0
.end method

.method public getExercise_id()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->exercise_id:J

    return-wide v0
.end method

.method public getPacer()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->pacer:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->speed:F

    return v0
.end method

.method public getStart_time()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->start_time:J

    return-wide v0
.end method

.method public getSync()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/smalife/db/entity/ExerciseEntity;->sync:I

    return v0
.end method

.method public setCalorie(F)V
    .locals 0
    .param p1, "calorie"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->calorie:F

    .line 72
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->distance:F

    .line 54
    return-void
.end method

.method public setEnd_time(J)V
    .locals 1
    .param p1, "end_time"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->end_time:J

    .line 48
    return-void
.end method

.method public setExercise_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "exercise_date"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->exercise_date:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setExercise_id(J)V
    .locals 1
    .param p1, "exercise_id"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->exercise_id:J

    .line 30
    return-void
.end method

.method public setPacer(F)V
    .locals 0
    .param p1, "pacer"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->pacer:F

    .line 66
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->speed:F

    .line 60
    return-void
.end method

.method public setStart_time(J)V
    .locals 1
    .param p1, "start_time"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->start_time:J

    .line 42
    return-void
.end method

.method public setSync(I)V
    .locals 0
    .param p1, "sync"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/smalife/db/entity/ExerciseEntity;->sync:I

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExerciseEntity [exercise_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/smalife/db/entity/ExerciseEntity;->exercise_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string v1, ", exercise_date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/db/entity/ExerciseEntity;->exercise_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget-wide v2, p0, Lcom/smalife/db/entity/ExerciseEntity;->start_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smalife/db/entity/ExerciseEntity;->end_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    iget v1, p0, Lcom/smalife/db/entity/ExerciseEntity;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/ExerciseEntity;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pacer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/ExerciseEntity;->pacer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string v1, ", calorie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/ExerciseEntity;->calorie:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/ExerciseEntity;->sync:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
