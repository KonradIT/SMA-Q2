.class final Lcom/igexin/getuiext/ui/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/data/a/d;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/data/a/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/ui/c;->a:Lcom/igexin/getuiext/data/a/d;

    iput-object p2, p0, Lcom/igexin/getuiext/ui/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/igexin/getuiext/ui/c;->a:Lcom/igexin/getuiext/data/a/d;

    iget-object v0, v0, Lcom/igexin/getuiext/data/a/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/igexin/getuiext/data/Consts;->DEFAULT_RETRY_TIMES:I

    invoke-static {v0, v1}, Lcom/igexin/getuiext/util/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/ui/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/c;->a:Lcom/igexin/getuiext/data/a/d;

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/ui/c;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/ui/c;->a(Ljava/lang/String;)V

    return-void
.end method
