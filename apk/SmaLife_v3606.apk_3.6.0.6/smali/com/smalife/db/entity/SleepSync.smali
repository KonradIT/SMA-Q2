.class public Lcom/smalife/db/entity/SleepSync;
.super Ljava/lang/Object;
.source "SleepSync.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private Action_time:Ljava/lang/String;

.field private Insert_time:Ljava/lang/String;

.field private MacAddress:Ljava/lang/String;

.field private Sleep_date:Ljava/lang/String;

.field private Sync:Ljava/lang/String;

.field private Time_type:Ljava/lang/String;

.field private User_account:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "sleep_date"

    iput-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Sleep_date:Ljava/lang/String;

    .line 14
    const-string v0, "action_time"

    iput-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Action_time:Ljava/lang/String;

    .line 16
    const-string v0, "insert_time"

    iput-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Insert_time:Ljava/lang/String;

    .line 19
    const-string v0, "time_type"

    iput-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Time_type:Ljava/lang/String;

    .line 21
    const-string v0, "user_account"

    iput-object v0, p0, Lcom/smalife/db/entity/SleepSync;->User_account:Ljava/lang/String;

    .line 23
    const-string v0, "mac_Address"

    iput-object v0, p0, Lcom/smalife/db/entity/SleepSync;->MacAddress:Ljava/lang/String;

    .line 25
    const-string v0, "sync_status"

    iput-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Sync:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public getAction_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Action_time:Ljava/lang/String;

    return-object v0
.end method

.method public getInsert_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Insert_time:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/smalife/db/entity/SleepSync;->MacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSleep_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Sleep_date:Ljava/lang/String;

    return-object v0
.end method

.method public getSync()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Sync:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smalife/db/entity/SleepSync;->Time_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_account()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smalife/db/entity/SleepSync;->User_account:Ljava/lang/String;

    return-object v0
.end method

.method public setAction_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "action_time"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/smalife/db/entity/SleepSync;->Action_time:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setInsert_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "insert_time"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/smalife/db/entity/SleepSync;->Insert_time:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/smalife/db/entity/SleepSync;->MacAddress:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSleep_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "sleep_date"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/smalife/db/entity/SleepSync;->Sleep_date:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSync(Ljava/lang/String;)V
    .locals 0
    .param p1, "sync"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smalife/db/entity/SleepSync;->Sync:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTime_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "time_type"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/smalife/db/entity/SleepSync;->Time_type:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUser_account(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_account"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/smalife/db/entity/SleepSync;->User_account:Ljava/lang/String;

    .line 65
    return-void
.end method
