.class public Lcom/smalife/db/entity/SleepEntity;
.super Ljava/lang/Object;
.source "SleepEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final deepSleep:I = 0x1

.field public static final fallSleep:I = 0x1

.field public static final isSetSleep:I = 0x1

.field public static final notSetSleep:I = 0x0

.field public static final notSleep:I = 0x3

.field private static final serialVersionUID:J = 0x1L

.field public static final tintSleep:I = 0x2

.field public static final wakeUp:I


# instance fields
.field private actionTime:Ljava/lang/String;

.field private clear_time:J

.field private deep_time:J

.field private fallsleep_time:J

.field private macAddress:Ljava/lang/String;

.field private sleep_date:Ljava/lang/String;

.field private sleep_id:J

.field private sleep_model:I

.field private sleep_type:I

.field private sync:I

.field private tint_time:J

.field private up_number:I

.field private userAccount:Ljava/lang/String;

.field private weakup_time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_date:Ljava/lang/String;

    .line 90
    iput v2, p0, Lcom/smalife/db/entity/SleepEntity;->sync:I

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_id:J

    .line 94
    iput v2, p0, Lcom/smalife/db/entity/SleepEntity;->up_number:I

    .line 11
    return-void
.end method

.method public static getDeepsleep()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public static getFallsleep()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public static getNotsleep()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x3

    return v0
.end method

.method public static getTintsleep()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x2

    return v0
.end method

.method public static getWakeup()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getActionTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/smalife/db/entity/SleepEntity;->actionTime:Ljava/lang/String;

    return-object v0
.end method

.method public getClear_time()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/smalife/db/entity/SleepEntity;->clear_time:J

    return-wide v0
.end method

.method public getDeep_time()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/smalife/db/entity/SleepEntity;->deep_time:J

    return-wide v0
.end method

.method public getFallsleep_time()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/smalife/db/entity/SleepEntity;->fallsleep_time:J

    return-wide v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/smalife/db/entity/SleepEntity;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSleep_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_date:Ljava/lang/String;

    return-object v0
.end method

.method public getSleep_id()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_id:J

    return-wide v0
.end method

.method public getSleep_model()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_model:I

    return v0
.end method

.method public getSleep_type()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_type:I

    return v0
.end method

.method public getSync()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/smalife/db/entity/SleepEntity;->sync:I

    return v0
.end method

.method public getTint_time()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/smalife/db/entity/SleepEntity;->tint_time:J

    return-wide v0
.end method

.method public getUp_number()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/smalife/db/entity/SleepEntity;->up_number:I

    return v0
.end method

.method public getUserAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/smalife/db/entity/SleepEntity;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getWeakup_time()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/smalife/db/entity/SleepEntity;->weakup_time:J

    return-wide v0
.end method

.method public setActionTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionTime"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/smalife/db/entity/SleepEntity;->actionTime:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setClear_time(J)V
    .locals 1
    .param p1, "clear_time"    # J

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/smalife/db/entity/SleepEntity;->clear_time:J

    .line 210
    return-void
.end method

.method public setDeep_time(J)V
    .locals 1
    .param p1, "deep_time"    # J

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/smalife/db/entity/SleepEntity;->deep_time:J

    .line 178
    return-void
.end method

.method public setFallsleep_time(J)V
    .locals 1
    .param p1, "fallsleep_time"    # J

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/smalife/db/entity/SleepEntity;->fallsleep_time:J

    .line 202
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/smalife/db/entity/SleepEntity;->macAddress:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setSleep_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "sleep_date"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_date:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setSleep_id(J)V
    .locals 1
    .param p1, "sleep_id"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_id:J

    .line 126
    return-void
.end method

.method public setSleep_model(I)V
    .locals 0
    .param p1, "sleep_model"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_model:I

    .line 102
    return-void
.end method

.method public setSleep_type(I)V
    .locals 0
    .param p1, "sleep_type"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_type:I

    .line 110
    return-void
.end method

.method public setSync(I)V
    .locals 0
    .param p1, "sync"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/smalife/db/entity/SleepEntity;->sync:I

    .line 134
    return-void
.end method

.method public setTint_time(J)V
    .locals 1
    .param p1, "tint_time"    # J

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/smalife/db/entity/SleepEntity;->tint_time:J

    .line 186
    return-void
.end method

.method public setUp_number(I)V
    .locals 0
    .param p1, "up_number"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/smalife/db/entity/SleepEntity;->up_number:I

    .line 118
    return-void
.end method

.method public setUserAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/smalife/db/entity/SleepEntity;->userAccount:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setWeakup_time(J)V
    .locals 1
    .param p1, "weakup_time"    # J

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/smalife/db/entity/SleepEntity;->weakup_time:J

    .line 194
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SleepEntity [sleep_model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_model:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleep_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    iget v1, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleep_date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/smalife/db/entity/SleepEntity;->actionTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleep_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smalife/db/entity/SleepEntity;->sleep_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
