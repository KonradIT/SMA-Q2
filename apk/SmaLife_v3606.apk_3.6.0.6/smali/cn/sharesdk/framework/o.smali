.class Lcn/sharesdk/framework/o;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/n;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/n;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/o;->a:Lcn/sharesdk/framework/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/o;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v1}, Lcn/sharesdk/framework/n;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/o;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/n;->a(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/o;->a:Lcn/sharesdk/framework/n;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/n;->b(Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
