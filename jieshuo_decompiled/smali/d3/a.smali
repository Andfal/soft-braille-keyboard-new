.class public final Ld3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/x;


# static fields
.field public static final a:Ld3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld3/a;

    invoke-direct {v0}, Ld3/a;-><init>()V

    sput-object v0, Ld3/a;->a:Ld3/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Ly2/x$a;)Ly2/Response;
    .locals 10

    const-string v0, "chain"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/g;

    invoke-virtual {p1}, Le3/g;->e()Ld3/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld3/d;->s(Le3/g;)Ld3/Exchange;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Le3/g;->d(Le3/g;ILd3/Exchange;Ly2/Request;IIIILjava/lang/Object;)Le3/g;

    move-result-object v0

    invoke-virtual {p1}, Le3/g;->i()Ly2/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Le3/g;->a(Ly2/Request;)Ly2/Response;

    move-result-object p1

    return-object p1
.end method
