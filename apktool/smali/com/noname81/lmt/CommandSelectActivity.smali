.class public Lcom/noname81/lmt/CommandSelectActivity;
.super Landroid/app/Activity;
.source "CommandSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;
    }
.end annotation


# instance fields
.field private mPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/noname81/lmt/CommandSelectActivity;->mPos:I

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/CommandSelectActivity;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/noname81/lmt/CommandSelectActivity;->mPos:I

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 49
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 70
    sget-object v1, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    sget-object v3, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    sget-object v3, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    sget-object v3, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    sget-object v3, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    sget-object v3, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 78
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 94
    sget-object v3, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v4, 0x28

    aget-object v3, v3, v4

    sget-object v5, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-static {v3, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v3, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v4, 0x29

    aget-object v3, v3, v4

    sget-object v5, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-static {v3, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v3, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v4, 0x2a

    aget-object v3, v3, v4

    sget-object v5, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-static {v3, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 100
    sget-object v4, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v5, 0x2c

    aget-object v4, v4, v5

    sget-object v6, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-static {v4, v5}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v4, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    const/16 v5, 0x2d

    aget-object v4, v4, v5

    sget-object v6, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-static {v4, v5}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v4, Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-direct {v4, p0}, Lcom/noname81/lmt/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    .line 105
    sget v5, Lcom/noname81/lmt/R$string;->commands_normal_commands:I

    invoke-virtual {p0, v5}, Lcom/noname81/lmt/CommandSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p0, p1, v7}, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;-><init>(Lcom/noname81/lmt/CommandSelectActivity;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v4, v5, v6}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 106
    sget p1, Lcom/noname81/lmt/R$string;->commands_toogle_commands:I

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/CommandSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

    const/16 v6, 0x13

    invoke-direct {v5, p0, p0, v0, v6}, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;-><init>(Lcom/noname81/lmt/CommandSelectActivity;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v4, p1, v5}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 107
    sget p1, Lcom/noname81/lmt/R$string;->commands_advanced_commands:I

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/CommandSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

    const/16 v5, 0x19

    invoke-direct {v0, p0, p0, v1, v5}, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;-><init>(Lcom/noname81/lmt/CommandSelectActivity;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v4, p1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 108
    sget p1, Lcom/noname81/lmt/R$string;->commands_app_drawer_commands:I

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/CommandSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

    const/16 v1, 0x27

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;-><init>(Lcom/noname81/lmt/CommandSelectActivity;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v4, p1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 109
    sget p1, Lcom/noname81/lmt/R$string;->commands_pie_action_commands:I

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/CommandSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

    const/16 v1, 0x2b

    invoke-direct {v0, p0, p0, v3, v1}, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;-><init>(Lcom/noname81/lmt/CommandSelectActivity;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v4, p1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 111
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    invoke-virtual {p1, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/CommandSelectActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 119
    iput p3, p0, Lcom/noname81/lmt/CommandSelectActivity;->mPos:I

    const/4 p1, 0x2

    const/4 p4, 0x0

    if-ne p3, p1, :cond_0

    .line 123
    sput p4, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    .line 124
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/noname81/lmt/MultiSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    invoke-virtual {p0, p1, p4}, Lcom/noname81/lmt/CommandSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    invoke-virtual {p0}, Lcom/noname81/lmt/CommandSelectActivity;->finish()V

    goto/16 :goto_1

    :cond_0
    const/16 p1, 0x1b

    if-ne p3, p1, :cond_1

    const/4 p1, 0x1

    .line 129
    sput p1, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    .line 130
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/noname81/lmt/MultiSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    invoke-virtual {p0, p1, p4}, Lcom/noname81/lmt/CommandSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    invoke-virtual {p0}, Lcom/noname81/lmt/CommandSelectActivity;->finish()V

    goto/16 :goto_1

    :cond_1
    const/16 p1, 0x21

    if-ne p3, p1, :cond_2

    const/4 p1, 0x5

    .line 135
    sput p1, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    .line 136
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/noname81/lmt/MultiSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0, p1, p4}, Lcom/noname81/lmt/CommandSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    invoke-virtual {p0}, Lcom/noname81/lmt/CommandSelectActivity;->finish()V

    goto/16 :goto_1

    :cond_2
    const/16 p1, 0x19

    if-le p3, p1, :cond_3

    const/16 p1, 0x1e

    if-lt p3, p1, :cond_4

    :cond_3
    const/16 p1, 0x20

    if-ne p3, p1, :cond_6

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/noname81/lmt/CommandSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->getCurrentAction()Lcom/noname81/lmt/Action;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getType()I

    move-result p2

    iget p3, p0, Lcom/noname81/lmt/CommandSelectActivity;->mPos:I

    if-ne p2, p3, :cond_5

    .line 145
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string p1, ""

    :goto_0
    move-object v5, p1

    .line 149
    new-instance p1, Lcom/noname81/lmt/CommandSelectActivity$1;

    sget p2, Lcom/noname81/lmt/R$string;->dialog_input:I

    .line 150
    invoke-virtual {p0, p2}, Lcom/noname81/lmt/CommandSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget p3, Lcom/noname81/lmt/R$string;->dialog_define_the:I

    .line 151
    invoke-virtual {p0, p3}, Lcom/noname81/lmt/CommandSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    iget p5, p0, Lcom/noname81/lmt/CommandSelectActivity;->mPos:I

    aget-object p4, p4, p5

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/noname81/lmt/R$string;->dialog_to_be_executed:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/CommandSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/CommandSelectActivity$1;-><init>(Lcom/noname81/lmt/CommandSelectActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    invoke-virtual {p1}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/noname81/lmt/CommandSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    new-instance p2, Lcom/noname81/lmt/Action;

    iget p3, p0, Lcom/noname81/lmt/CommandSelectActivity;->mPos:I

    invoke-direct {p2, p3}, Lcom/noname81/lmt/Action;-><init>(I)V

    invoke-virtual {p1, p0, p2}, Lcom/noname81/lmt/SettingsValues;->setCurrentAction(Landroid/app/Activity;Lcom/noname81/lmt/Action;)V

    .line 166
    invoke-virtual {p0}, Lcom/noname81/lmt/CommandSelectActivity;->onBackPressed()V

    :goto_1
    return-void
.end method
