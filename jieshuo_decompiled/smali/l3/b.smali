.class public final Ll3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lm3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lm3/h;->e:Lm3/h$a;

    const-string v1, "000000ffff"

    invoke-virtual {v0, v1}, Lm3/h$a;->a(Ljava/lang/String;)Lm3/h;

    move-result-object v0

    sput-object v0, Ll3/b;->a:Lm3/h;

    return-void
.end method

.method public static final synthetic a()Lm3/h;
    .locals 1

    sget-object v0, Ll3/b;->a:Lm3/h;

    return-object v0
.end method
