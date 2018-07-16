.class Lcom/integrity_project/smartconfiglib/SmartConfig$2;
.super Ljava/lang/Object;
.source "SmartConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/integrity_project/smartconfiglib/SmartConfig;->transmitSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/integrity_project/smartconfiglib/SmartConfig;


# direct methods
.method constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfig;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$2;->this$0:Lcom/integrity_project/smartconfiglib/SmartConfig;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$2;->this$0:Lcom/integrity_project/smartconfiglib/SmartConfig;

    invoke-static {v1}, Lcom/integrity_project/smartconfiglib/SmartConfig;->access$2(Lcom/integrity_project/smartconfiglib/SmartConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;

    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$2;->this$0:Lcom/integrity_project/smartconfiglib/SmartConfig;

    iget-object v3, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$2;->this$0:Lcom/integrity_project/smartconfiglib/SmartConfig;

    invoke-static {v3}, Lcom/integrity_project/smartconfiglib/SmartConfig;->access$1(Lcom/integrity_project/smartconfiglib/SmartConfig;)Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfig;Lcom/integrity_project/smartconfiglib/SmartConfigListener;Ljava/lang/Exception;)V

    goto :goto_0
.end method
