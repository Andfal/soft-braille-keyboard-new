.class Lc/g$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c0"
.end annotation


# static fields
.field public static final a:Lc/g$c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/g$c0;

    invoke-direct {v0}, Lc/g$c0;-><init>()V

    sput-object v0, Lc/g$c0;->a:Lc/g$c0;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lc/g$c0;->b(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1, p3}, Lc/g;->g(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
