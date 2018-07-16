.class public Lcom/smalife/entity/RateSetEntity;
.super Ljava/lang/Object;
.source "RateSetEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private end_hour:B

.field private open:B

.field private periodTime:B

.field private repeat:B

.field private start_hour:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd_hour()B
    .locals 1

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/smalife/entity/RateSetEntity;->end_hour:B

    return v0
.end method

.method public getOpen()B
    .locals 1

    .prologue
    .line 19
    iget-byte v0, p0, Lcom/smalife/entity/RateSetEntity;->open:B

    return v0
.end method

.method public getPeriodTime()B
    .locals 1

    .prologue
    .line 25
    iget-byte v0, p0, Lcom/smalife/entity/RateSetEntity;->periodTime:B

    return v0
.end method

.method public getRepeat()B
    .locals 1

    .prologue
    .line 13
    iget-byte v0, p0, Lcom/smalife/entity/RateSetEntity;->repeat:B

    return v0
.end method

.method public getStart_hour()B
    .locals 1

    .prologue
    .line 37
    iget-byte v0, p0, Lcom/smalife/entity/RateSetEntity;->start_hour:B

    return v0
.end method

.method public setEnd_hour(B)V
    .locals 0
    .param p1, "end_hour"    # B

    .prologue
    .line 34
    iput-byte p1, p0, Lcom/smalife/entity/RateSetEntity;->end_hour:B

    .line 35
    return-void
.end method

.method public setOpen(B)V
    .locals 0
    .param p1, "open"    # B

    .prologue
    .line 22
    iput-byte p1, p0, Lcom/smalife/entity/RateSetEntity;->open:B

    .line 23
    return-void
.end method

.method public setPeriodTime(B)V
    .locals 0
    .param p1, "periodTime"    # B

    .prologue
    .line 28
    iput-byte p1, p0, Lcom/smalife/entity/RateSetEntity;->periodTime:B

    .line 29
    return-void
.end method

.method public setRepeat(B)V
    .locals 0
    .param p1, "repeat"    # B

    .prologue
    .line 16
    iput-byte p1, p0, Lcom/smalife/entity/RateSetEntity;->repeat:B

    .line 17
    return-void
.end method

.method public setStart_hour(B)V
    .locals 0
    .param p1, "start_hour"    # B

    .prologue
    .line 40
    iput-byte p1, p0, Lcom/smalife/entity/RateSetEntity;->start_hour:B

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RateSetEntity [open="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/smalife/entity/RateSetEntity;->open:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", periodTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/smalife/entity/RateSetEntity;->periodTime:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v1, ", end_hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/smalife/entity/RateSetEntity;->end_hour:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start_hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/smalife/entity/RateSetEntity;->start_hour:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
