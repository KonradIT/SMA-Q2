.class Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;
.super Ljava/lang/Object;
.source "SmartConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integrity_project/smartconfiglib/SmartConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyThread"
.end annotation


# instance fields
.field private m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

.field private t_event:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

.field private t_ex:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/integrity_project/smartconfiglib/SmartConfig;


# direct methods
.method public constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfig;Lcom/integrity_project/smartconfiglib/SmartConfigListener;Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;)V
    .locals 2
    .param p2, "listener"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .param p3, "event"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->this$0:Lcom/integrity_project/smartconfiglib/SmartConfig;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    .line 338
    iput-object p3, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->t_event:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->t_ex:Ljava/lang/Exception;

    .line 340
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 341
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    return-void
.end method

.method public constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfig;Lcom/integrity_project/smartconfiglib/SmartConfigListener;Ljava/lang/Exception;)V
    .locals 2
    .param p2, "listener"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->this$0:Lcom/integrity_project/smartconfiglib/SmartConfig;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    .line 346
    sget-object v1, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_ERROR:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    iput-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->t_event:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    .line 347
    iput-object p3, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->t_ex:Ljava/lang/Exception;

    .line 348
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 349
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 350
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    iget-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->t_event:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;->t_ex:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/integrity_project/smartconfiglib/SmartConfigListener;->onSmartConfigEvent(Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method
