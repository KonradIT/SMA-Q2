.class public Lcom/hiflying/smartlink/R1;
.super Ljava/lang/Object;
.source "R1.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anim(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "anim"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static animator(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "animator"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static array(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "array"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static attr(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "attr"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static color(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "color"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static dimen(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "dimen"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static drawable(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "drawable"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getFieldFromStyleable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R$styleable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 98
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 104
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Must call initContext(Context _context), recommend application context"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "resource":I
    if-nez v0, :cond_1

    .line 86
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "Resource for id R.%s.%s not found!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_1
    return v0
.end method

.method public static id(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    .line 13
    sput-object p0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static integer(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "integer"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static layout(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "layout"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static raw(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "raw"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static string(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "string"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static style(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    const-string v1, "style"

    invoke-static {v0, p0, v1}, Lcom/hiflying/smartlink/R1;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static styleable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/hiflying/smartlink/R1;->getFieldFromStyleable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static styleable(Ljava/lang/String;)[I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/hiflying/smartlink/R1;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/hiflying/smartlink/R1;->getFieldFromStyleable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
