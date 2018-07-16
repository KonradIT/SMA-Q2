.class public Lcom/smalife/adapter/TimeField;
.super Ljava/lang/Object;
.source "TimeField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private checked:Z

.field public day:B

.field public hour:B

.field public id:B

.field public mintue:B

.field public month:B

.field public repeat:I

.field private repeatArray:[I

.field public tag:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private week:Ljava/lang/String;

.field public year:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()B
    .locals 1

    .prologue
    .line 94
    iget-byte v0, p0, Lcom/smalife/adapter/TimeField;->day:B

    return v0
.end method

.method public getHour()B
    .locals 1

    .prologue
    .line 102
    iget-byte v0, p0, Lcom/smalife/adapter/TimeField;->hour:B

    return v0
.end method

.method public getId()B
    .locals 1

    .prologue
    .line 70
    iget-byte v0, p0, Lcom/smalife/adapter/TimeField;->id:B

    return v0
.end method

.method public getMintue()B
    .locals 1

    .prologue
    .line 110
    iget-byte v0, p0, Lcom/smalife/adapter/TimeField;->mintue:B

    return v0
.end method

.method public getMonth()B
    .locals 1

    .prologue
    .line 86
    iget-byte v0, p0, Lcom/smalife/adapter/TimeField;->month:B

    return v0
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/smalife/adapter/TimeField;->repeat:I

    return v0
.end method

.method public getRepeatArray()[I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smalife/adapter/TimeField;->repeatArray:[I

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smalife/adapter/TimeField;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smalife/adapter/TimeField;->week:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()B
    .locals 1

    .prologue
    .line 78
    iget-byte v0, p0, Lcom/smalife/adapter/TimeField;->year:B

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/smalife/adapter/TimeField;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/smalife/adapter/TimeField;->checked:Z

    .line 59
    return-void
.end method

.method public setDay(B)V
    .locals 0
    .param p1, "day"    # B

    .prologue
    .line 98
    iput-byte p1, p0, Lcom/smalife/adapter/TimeField;->day:B

    .line 99
    return-void
.end method

.method public setHour(B)V
    .locals 0
    .param p1, "hour"    # B

    .prologue
    .line 106
    iput-byte p1, p0, Lcom/smalife/adapter/TimeField;->hour:B

    .line 107
    return-void
.end method

.method public setId(B)V
    .locals 0
    .param p1, "id"    # B

    .prologue
    .line 74
    iput-byte p1, p0, Lcom/smalife/adapter/TimeField;->id:B

    .line 75
    return-void
.end method

.method public setMintue(B)V
    .locals 0
    .param p1, "mintue"    # B

    .prologue
    .line 114
    iput-byte p1, p0, Lcom/smalife/adapter/TimeField;->mintue:B

    .line 115
    return-void
.end method

.method public setMonth(B)V
    .locals 0
    .param p1, "month"    # B

    .prologue
    .line 90
    iput-byte p1, p0, Lcom/smalife/adapter/TimeField;->month:B

    .line 91
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/smalife/adapter/TimeField;->repeat:I

    .line 67
    return-void
.end method

.method public setRepeatArray([I)V
    .locals 0
    .param p1, "repeatArray"    # [I

    .prologue
    .line 42
    iput-object p1, p0, Lcom/smalife/adapter/TimeField;->repeatArray:[I

    .line 43
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/smalife/adapter/TimeField;->time:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0
    .param p1, "week"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/smalife/adapter/TimeField;->week:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setYear(B)V
    .locals 0
    .param p1, "year"    # B

    .prologue
    .line 82
    iput-byte p1, p0, Lcom/smalife/adapter/TimeField;->year:B

    .line 83
    return-void
.end method
