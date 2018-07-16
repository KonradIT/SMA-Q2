.class Lcn/smssdk/contact/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/smssdk/contact/d;


# direct methods
.method constructor <init>(Lcn/smssdk/contact/d;)V
    .locals 0

    iput-object p1, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-static {v0}, Lcn/smssdk/contact/d;->a(Lcn/smssdk/contact/d;)Lcn/smssdk/contact/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/smssdk/contact/a;->b()V

    iget-object v0, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-static {v0}, Lcn/smssdk/contact/d;->a(Lcn/smssdk/contact/d;)Lcn/smssdk/contact/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/smssdk/contact/a;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-static {v1, v0}, Lcn/smssdk/contact/d;->a(Lcn/smssdk/contact/d;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-static {v2}, Lcn/smssdk/contact/d;->b(Lcn/smssdk/contact/d;)Lcn/smssdk/utils/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/smssdk/utils/e;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-static {v2}, Lcn/smssdk/contact/d;->c(Lcn/smssdk/contact/d;)Lcn/smssdk/utils/Protocols;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/smssdk/utils/Protocols;->b(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v2, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-static {v2}, Lcn/smssdk/contact/d;->b(Lcn/smssdk/contact/d;)Lcn/smssdk/utils/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/smssdk/utils/e;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-static {v0}, Lcn/smssdk/contact/d;->b(Lcn/smssdk/contact/d;)Lcn/smssdk/utils/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/smssdk/utils/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/smssdk/contact/e;->a:Lcn/smssdk/contact/d;

    invoke-static {v0}, Lcn/smssdk/contact/d;->d(Lcn/smssdk/contact/d;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
