.class public Lcom/smalife/db/entity/RateEntity;
.super Ljava/lang/Object;
.source "RateEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static STATUS_EXERCISE:I = 0x0

.field public static STATUS_NORMAL:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private rate_Id:J

.field private rate_date:Ljava/lang/String;

.field private rate_status:I

.field private rate_time:J

.field private rate_value:I

.field private sync:I

.field private userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/smalife/db/entity/RateEntity;->STATUS_NORMAL:I

    .line 14
    const/4 v0, 0x1

    sput v0, Lcom/smalife/db/entity/RateEntity;->STATUS_EXERCISE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/db/entity/RateEntity;->sync:I

    .line 5
    return-void
.end method


# virtual methods
.method public getRate_Id()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/smalife/db/entity/RateEntity;->rate_Id:J

    return-wide v0
.end method

.method public getRate_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smalife/db/entity/RateEntity;->rate_date:Ljava/lang/String;

    return-object v0
.end method

.method public getRate_status()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/smalife/db/entity/RateEntity;->rate_status:I

    return v0
.end method

.method public getRate_time()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/smalife/db/entity/RateEntity;->rate_time:J

    return-wide v0
.end method

.method public getRate_value()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/smalife/db/entity/RateEntity;->rate_value:I

    return v0
.end method

.method public getSync()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/smalife/db/entity/RateEntity;->sync:I

    return v0
.end method

.method public getUserAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smalife/db/entity/RateEntity;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setRate_Id(J)V
    .locals 1
    .param p1, "rate_Id"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/smalife/db/entity/RateEntity;->rate_Id:J

    .line 45
    return-void
.end method

.method public setRate_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate_date"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/smalife/db/entity/RateEntity;->rate_date:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRate_status(I)V
    .locals 0
    .param p1, "rate_status"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/smalife/db/entity/RateEntity;->rate_status:I

    .line 57
    return-void
.end method

.method public setRate_time(J)V
    .locals 1
    .param p1, "rate_time"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/smalife/db/entity/RateEntity;->rate_time:J

    .line 41
    return-void
.end method

.method public setRate_value(I)V
    .locals 0
    .param p1, "rate_value"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/smalife/db/entity/RateEntity;->rate_value:I

    .line 63
    return-void
.end method

.method public setSync(I)V
    .locals 0
    .param p1, "sync"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/smalife/db/entity/RateEntity;->sync:I

    .line 29
    return-void
.end method

.method public setUserAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/smalife/db/entity/RateEntity;->userAccount:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RateEntity [userAccount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/db/entity/RateEntity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rate_Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-wide v2, p0, Lcom/smalife/db/entity/RateEntity;->rate_Id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rate_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smalife/db/entity/RateEntity;->rate_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rate_date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/smalife/db/entity/RateEntity;->rate_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rate_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/RateEntity;->rate_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rate_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    iget v1, p0, Lcom/smalife/db/entity/RateEntity;->rate_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/RateEntity;->sync:I

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
