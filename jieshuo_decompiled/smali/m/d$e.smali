.class final enum Lm/d$e;
.super Lm/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lm/d;-><init>(Ljava/lang/String;ILm/j;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILm/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lm/d$e;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method a(Lw/e;)Lu/r;
    .locals 0

    invoke-static {p1}, Lu/t;->g(Lw/e;)Lu/r;

    move-result-object p1

    return-object p1
.end method
