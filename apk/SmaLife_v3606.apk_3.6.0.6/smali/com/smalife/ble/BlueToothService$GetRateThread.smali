.class Lcom/smalife/ble/BlueToothService$GetRateThread;
.super Ljava/lang/Thread;
.source "BlueToothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/BlueToothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetRateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;


# direct methods
.method private constructor <init>(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2888
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/ble/BlueToothService;Lcom/smalife/ble/BlueToothService$GetRateThread;)V
    .locals 0

    .prologue
    .line 2888
    invoke-direct {p0, p1}, Lcom/smalife/ble/BlueToothService$GetRateThread;-><init>(Lcom/smalife/ble/BlueToothService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2891
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2893
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$24(Lcom/smalife/ble/BlueToothService;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService$GetRateThread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2938
    :cond_1
    :goto_1
    return-void

    .line 2894
    :cond_2
    const-string v7, "SM05"

    iget-object v8, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v8}, Lcom/smalife/ble/BlueToothService;->access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2895
    sget-boolean v7, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getQota()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2896
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v7

    iget-boolean v7, v7, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v7, :cond_3

    .line 2898
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2899
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2900
    .local v0, "Hour":I
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2901
    .local v3, "minuts":I
    div-int/lit8 v7, v3, 0xf

    const/4 v8, 0x2

    if-ge v7, v8, :cond_4

    rem-int/lit8 v7, v3, 0xf

    if-nez v7, :cond_4

    .line 2902
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v7

    mul-int/lit8 v8, v0, 0x2

    invoke-virtual {v7, v8}, Lcom/smalife/MyApplication;->editCurRateTime(I)V

    .line 2903
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 2904
    .local v2, "dt":Ljava/util/Date;
    const-string v6, "0000"

    .line 2905
    .local v6, "sle_action":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v8}, Lcom/smalife/ble/BlueToothService;->access$25(Lcom/smalife/ble/BlueToothService;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2905
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2907
    .local v4, "id":J
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/smalife/MyApplication;->editCurRateID(J)V

    .line 2908
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$13(Lcom/smalife/ble/BlueToothService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2920
    .end local v0    # "Hour":I
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "dt":Ljava/util/Date;
    .end local v3    # "minuts":I
    .end local v4    # "id":J
    .end local v6    # "sle_action":Ljava/lang/String;
    :cond_3
    :goto_2
    const-wide/32 v8, 0x927c0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 2935
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 2909
    .restart local v0    # "Hour":I
    .restart local v1    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "minuts":I
    :cond_4
    div-int/lit8 v7, v3, 0xf

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 2910
    rem-int/lit8 v7, v3, 0xf

    if-nez v7, :cond_3

    .line 2911
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v7

    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smalife/MyApplication;->editCurRateTime(I)V

    .line 2912
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 2913
    .restart local v2    # "dt":Ljava/util/Date;
    const-string v6, "0030"

    .line 2914
    .restart local v6    # "sle_action":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v8}, Lcom/smalife/ble/BlueToothService;->access$25(Lcom/smalife/ble/BlueToothService;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2914
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2916
    .restart local v4    # "id":J
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/smalife/MyApplication;->editCurRateID(J)V

    .line 2917
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$GetRateThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$13(Lcom/smalife/ble/BlueToothService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 2922
    .end local v0    # "Hour":I
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "dt":Ljava/util/Date;
    .end local v3    # "minuts":I
    .end local v4    # "id":J
    .end local v6    # "sle_action":Ljava/lang/String;
    :cond_5
    const-wide/32 v8, 0x927c0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
