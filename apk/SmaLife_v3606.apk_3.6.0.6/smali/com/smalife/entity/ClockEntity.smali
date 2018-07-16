.class public Lcom/smalife/entity/ClockEntity;
.super Ljava/lang/Object;
.source "ClockEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _id:I

.field private account:Ljava/lang/String;

.field private clockName:Ljava/lang/String;

.field private clock_time:Ljava/lang/String;

.field private day:I

.field private frid_day:I

.field private macAddress:Ljava/lang/String;

.field private mon_day:I

.field private month:I

.field private openOrClose:I

.field private repeat:I

.field private sta_day:I

.field private sun_day:I

.field private sync:I

.field private thur_day:I

.field private tues_day:I

.field private wes_day:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/entity/ClockEntity;->_id:I

    .line 18
    iput v1, p0, Lcom/smalife/entity/ClockEntity;->sun_day:I

    .line 19
    iput v1, p0, Lcom/smalife/entity/ClockEntity;->sta_day:I

    .line 20
    iput v1, p0, Lcom/smalife/entity/ClockEntity;->frid_day:I

    .line 21
    iput v1, p0, Lcom/smalife/entity/ClockEntity;->thur_day:I

    .line 22
    iput v1, p0, Lcom/smalife/entity/ClockEntity;->wes_day:I

    .line 23
    iput v1, p0, Lcom/smalife/entity/ClockEntity;->tues_day:I

    .line 24
    iput v1, p0, Lcom/smalife/entity/ClockEntity;->mon_day:I

    .line 29
    iput v1, p0, Lcom/smalife/entity/ClockEntity;->sync:I

    .line 5
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/smalife/entity/ClockEntity;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getClockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/smalife/entity/ClockEntity;->clockName:Ljava/lang/String;

    return-object v0
.end method

.method public getClock_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/smalife/entity/ClockEntity;->clock_time:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->day:I

    return v0
.end method

.method public getFrid_day()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->frid_day:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smalife/entity/ClockEntity;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMon_day()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->mon_day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->month:I

    return v0
.end method

.method public getOpenOrClose()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->openOrClose:I

    return v0
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->repeat:I

    return v0
.end method

.method public getSta_day()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->sta_day:I

    return v0
.end method

.method public getSun_day()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->sun_day:I

    return v0
.end method

.method public getSync()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->sync:I

    return v0
.end method

.method public getThur_day()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->thur_day:I

    return v0
.end method

.method public getTues_day()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->tues_day:I

    return v0
.end method

.method public getWes_day()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->wes_day:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->year:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/smalife/entity/ClockEntity;->_id:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/smalife/entity/ClockEntity;->account:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setClockName(Ljava/lang/String;)V
    .locals 0
    .param p1, "clockName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/smalife/entity/ClockEntity;->clockName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setClock_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "clock_time"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/smalife/entity/ClockEntity;->clock_time:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->day:I

    .line 167
    return-void
.end method

.method public setFrid_day(I)V
    .locals 0
    .param p1, "frid_day"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->frid_day:I

    .line 71
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/smalife/entity/ClockEntity;->macAddress:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMon_day(I)V
    .locals 0
    .param p1, "mon_day"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->mon_day:I

    .line 103
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->month:I

    .line 159
    return-void
.end method

.method public setOpenOrClose(I)V
    .locals 0
    .param p1, "openOrClose"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->openOrClose:I

    .line 127
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->repeat:I

    .line 175
    return-void
.end method

.method public setSta_day(I)V
    .locals 0
    .param p1, "sta_day"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->sta_day:I

    .line 63
    return-void
.end method

.method public setSun_day(I)V
    .locals 0
    .param p1, "sun_day"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->sun_day:I

    .line 55
    return-void
.end method

.method public setSync(I)V
    .locals 0
    .param p1, "sync"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->sync:I

    .line 47
    return-void
.end method

.method public setThur_day(I)V
    .locals 0
    .param p1, "thur_day"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->thur_day:I

    .line 79
    return-void
.end method

.method public setTues_day(I)V
    .locals 0
    .param p1, "tues_day"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->tues_day:I

    .line 95
    return-void
.end method

.method public setWes_day(I)V
    .locals 0
    .param p1, "wes_day"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->wes_day:I

    .line 87
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->year:I

    .line 151
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/smalife/entity/ClockEntity;->_id:I

    .line 143
    return-void
.end method
