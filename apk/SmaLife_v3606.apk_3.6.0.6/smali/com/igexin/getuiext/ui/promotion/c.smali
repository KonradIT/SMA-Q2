.class public abstract Lcom/igexin/getuiext/ui/promotion/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/igexin/getuiext/ui/promotion/b;

.field protected b:Landroid/content/Context;

.field protected c:I

.field protected d:I

.field protected e:Lcom/igexin/getuiext/ui/f;

.field private f:Lcom/igexin/getuiext/ui/promotion/m;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/igexin/getuiext/ui/promotion/c;->f:Lcom/igexin/getuiext/ui/promotion/m;

    invoke-static {p1}, Lcom/igexin/getuiext/ui/f;->a(Landroid/content/Context;)Lcom/igexin/getuiext/ui/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->e:Lcom/igexin/getuiext/ui/f;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->c:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(II)Landroid/view/View;
.end method

.method public a()Lcom/igexin/getuiext/ui/promotion/m;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->f:Lcom/igexin/getuiext/ui/promotion/m;

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->a:Lcom/igexin/getuiext/ui/promotion/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->a:Lcom/igexin/getuiext/ui/promotion/b;

    invoke-interface {v0, p0}, Lcom/igexin/getuiext/ui/promotion/b;->a(Lcom/igexin/getuiext/ui/promotion/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/ui/promotion/c;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->a:Lcom/igexin/getuiext/ui/promotion/b;

    invoke-interface {v0, p0}, Lcom/igexin/getuiext/ui/promotion/b;->b(Lcom/igexin/getuiext/ui/promotion/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/ui/promotion/c;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/ui/promotion/c;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract b(Landroid/view/View;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/ui/promotion/c;->h:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/ui/promotion/c;->a(Landroid/view/View;)V

    return-void
.end method
