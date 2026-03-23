.class public final Lv/e;
.super Lv/n;
.source "SourceFile"


# static fields
.field public static final b:Lv/e;

.field public static final c:Lv/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv/e;-><init>(Z)V

    sput-object v0, Lv/e;->b:Lv/e;

    new-instance v0, Lv/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv/e;-><init>(Z)V

    sput-object v0, Lv/e;->c:Lv/e;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lv/n;-><init>(I)V

    return-void
.end method

.method public static k(Z)Lv/e;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lv/e;->c:Lv/e;

    goto :goto_0

    :cond_0
    sget-object p0, Lv/e;->b:Lv/e;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lv/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "boolean"

    return-object v0
.end method

.method public getType()Lw/c;
    .locals 1

    sget-object v0, Lw/c;->i:Lw/c;

    return-object v0
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lv/n;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lv/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boolean{true}"

    goto :goto_0

    :cond_0
    const-string v0, "boolean{false}"

    :goto_0
    return-object v0
.end method
