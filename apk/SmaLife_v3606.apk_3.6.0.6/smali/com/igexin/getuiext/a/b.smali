.class public Lcom/igexin/getuiext/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    const-string v1, "android.intent.action.USER_PRESENT"

    new-instance v2, Lcom/igexin/getuiext/a/n;

    invoke-direct {v2}, Lcom/igexin/getuiext/a/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    const-string v1, "com.igexin.download.action.notify.click"

    new-instance v2, Lcom/igexin/getuiext/a/f;

    invoke-direct {v2}, Lcom/igexin/getuiext/a/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    const-string v1, "com.igexin.increment"

    new-instance v2, Lcom/igexin/getuiext/a/i;

    invoke-direct {v2}, Lcom/igexin/getuiext/a/i;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    const-string v1, "install"

    new-instance v2, Lcom/igexin/getuiext/a/j;

    invoke-direct {v2}, Lcom/igexin/getuiext/a/j;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    const-string v1, "download"

    new-instance v2, Lcom/igexin/getuiext/a/e;

    invoke-direct {v2}, Lcom/igexin/getuiext/a/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    const-string v1, "bindApp"

    new-instance v2, Lcom/igexin/getuiext/a/c;

    invoke-direct {v2}, Lcom/igexin/getuiext/a/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    const-string v1, "update"

    new-instance v2, Lcom/igexin/getuiext/a/l;

    invoke-direct {v2}, Lcom/igexin/getuiext/a/l;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    const-string v1, "handleUpdate"

    new-instance v2, Lcom/igexin/getuiext/a/g;

    invoke-direct {v2}, Lcom/igexin/getuiext/a/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/igexin/getuiext/a/a;
    .locals 1

    sget-object v0, Lcom/igexin/getuiext/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/a/a;

    return-object v0
.end method
