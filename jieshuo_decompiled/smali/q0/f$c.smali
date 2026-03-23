.class Lq0/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lq0/f;


# direct methods
.method public constructor <init>(Lq0/f;)V
    .locals 0

    iput-object p1, p0, Lq0/f$c;->c:Lq0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lq1/a;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq0/f$c;->a:Ljava/lang/String;

    return-void
.end method
