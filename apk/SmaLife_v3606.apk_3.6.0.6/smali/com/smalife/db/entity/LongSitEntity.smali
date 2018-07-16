.class public Lcom/smalife/db/entity/LongSitEntity;
.super Ljava/lang/Object;
.source "LongSitEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private days:[I

.field private end:B

.field private open:B

.field private reapte:B

.field private sit:B

.field private start:B

.field private steps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/smalife/db/entity/LongSitEntity;->days:[I

    .line 6
    return-void
.end method


# virtual methods
.method public getDays()[I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smalife/db/entity/LongSitEntity;->days:[I

    return-object v0
.end method

.method public getEnd()B
    .locals 1

    .prologue
    .line 29
    iget-byte v0, p0, Lcom/smalife/db/entity/LongSitEntity;->end:B

    return v0
.end method

.method public getOpen()B
    .locals 1

    .prologue
    .line 61
    iget-byte v0, p0, Lcom/smalife/db/entity/LongSitEntity;->open:B

    return v0
.end method

.method public getReapte()B
    .locals 1

    .prologue
    .line 69
    iget-byte v0, p0, Lcom/smalife/db/entity/LongSitEntity;->reapte:B

    return v0
.end method

.method public getSit()B
    .locals 1

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/smalife/db/entity/LongSitEntity;->sit:B

    return v0
.end method

.method public getStart()B
    .locals 1

    .prologue
    .line 37
    iget-byte v0, p0, Lcom/smalife/db/entity/LongSitEntity;->start:B

    return v0
.end method

.method public getSteps()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/smalife/db/entity/LongSitEntity;->steps:I

    return v0
.end method

.method public setDays([I)V
    .locals 0
    .param p1, "days"    # [I

    .prologue
    .line 25
    iput-object p1, p0, Lcom/smalife/db/entity/LongSitEntity;->days:[I

    .line 26
    return-void
.end method

.method public setEnd(B)V
    .locals 0
    .param p1, "end"    # B

    .prologue
    .line 33
    iput-byte p1, p0, Lcom/smalife/db/entity/LongSitEntity;->end:B

    .line 34
    return-void
.end method

.method public setOpen(B)V
    .locals 0
    .param p1, "open"    # B

    .prologue
    .line 65
    iput-byte p1, p0, Lcom/smalife/db/entity/LongSitEntity;->open:B

    .line 66
    return-void
.end method

.method public setReapte(B)V
    .locals 0
    .param p1, "reapte"    # B

    .prologue
    .line 73
    iput-byte p1, p0, Lcom/smalife/db/entity/LongSitEntity;->reapte:B

    .line 74
    return-void
.end method

.method public setSit(B)V
    .locals 0
    .param p1, "sit"    # B

    .prologue
    .line 49
    iput-byte p1, p0, Lcom/smalife/db/entity/LongSitEntity;->sit:B

    .line 50
    return-void
.end method

.method public setStart(B)V
    .locals 0
    .param p1, "start"    # B

    .prologue
    .line 41
    iput-byte p1, p0, Lcom/smalife/db/entity/LongSitEntity;->start:B

    .line 42
    return-void
.end method

.method public setSteps(I)V
    .locals 0
    .param p1, "steps"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/smalife/db/entity/LongSitEntity;->steps:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LongSitEntity [days="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/db/entity/LongSitEntity;->days:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/smalife/db/entity/LongSitEntity;->end:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/smalife/db/entity/LongSitEntity;->start:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/smalife/db/entity/LongSitEntity;->sit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smalife/db/entity/LongSitEntity;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string v1, ", open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/smalife/db/entity/LongSitEntity;->open:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reapte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/smalife/db/entity/LongSitEntity;->reapte:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
